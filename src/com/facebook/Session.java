package com.facebook;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.support.v4.app.Fragment;
import android.support.v4.content.u;
import android.text.TextUtils;
import android.util.Log;
import com.facebook.internal.SessionAuthorizationType;
import com.facebook.internal.Utility;
import com.facebook.internal.Validate;
import com.facebook.model.GraphMultiResult;
import com.facebook.model.GraphObject;
import com.facebook.model.GraphObjectList;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.InvalidObjectException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Map.Entry;
import java.util.Set;
import java.util.concurrent.Executor;
import org.json.JSONException;
import org.json.JSONObject;

public class Session
  implements Serializable
{
  public static final String ACTION_ACTIVE_SESSION_CLOSED = "com.facebook.sdk.ACTIVE_SESSION_CLOSED";
  public static final String ACTION_ACTIVE_SESSION_OPENED = "com.facebook.sdk.ACTIVE_SESSION_OPENED";
  public static final String ACTION_ACTIVE_SESSION_SET = "com.facebook.sdk.ACTIVE_SESSION_SET";
  public static final String ACTION_ACTIVE_SESSION_UNSET = "com.facebook.sdk.ACTIVE_SESSION_UNSET";
  private static final String AUTH_BUNDLE_SAVE_KEY = "com.facebook.sdk.Session.authBundleKey";
  public static final int DEFAULT_AUTHORIZE_ACTIVITY_CODE = 64206;
  private static final String MANAGE_PERMISSION_PREFIX = "manage";
  private static final Set<String> OTHER_PUBLISH_PERMISSIONS = new Session.1();
  private static final String PUBLISH_PERMISSION_PREFIX = "publish";
  private static final String SESSION_BUNDLE_SAVE_KEY = "com.facebook.sdk.Session.saveSessionKey";
  private static final Object STATIC_LOCK;
  public static final String TAG = Session.class.getCanonicalName();
  private static final int TOKEN_EXTEND_RETRY_SECONDS = 3600;
  private static final int TOKEN_EXTEND_THRESHOLD_SECONDS = 86400;
  public static final String WEB_VIEW_ERROR_CODE_KEY = "com.facebook.sdk.WebViewErrorCode";
  public static final String WEB_VIEW_FAILING_URL_KEY = "com.facebook.sdk.FailingUrl";
  private static Session activeSession;
  private static final long serialVersionUID = 1L;
  private static volatile Context staticContext;
  private AppEventsLogger appEventsLogger;
  private String applicationId;
  private volatile Bundle authorizationBundle;
  private AuthorizationClient authorizationClient;
  private Session.AutoPublishAsyncTask autoPublishAsyncTask;
  private final List<Session.StatusCallback> callbacks;
  private volatile Session.TokenRefreshRequest currentTokenRefreshRequest;
  private Handler handler;
  private Date lastAttemptedTokenExtendDate = new Date(0L);
  private final Object lock = new Object();
  private Session.AuthorizationRequest pendingAuthorizationRequest;
  private SessionState state;
  private TokenCachingStrategy tokenCachingStrategy;
  private AccessToken tokenInfo;
  
  static
  {
    STATIC_LOCK = new Object();
  }
  
  public Session(Context paramContext)
  {
    this(paramContext, null, null, true);
  }
  
  Session(Context paramContext, String paramString, TokenCachingStrategy paramTokenCachingStrategy)
  {
    this(paramContext, paramString, paramTokenCachingStrategy, true);
  }
  
  Session(Context paramContext, String paramString, TokenCachingStrategy paramTokenCachingStrategy, boolean paramBoolean)
  {
    Object localObject1 = paramString;
    if (paramContext != null)
    {
      localObject1 = paramString;
      if (paramString == null) {
        localObject1 = Utility.getMetadataApplicationId(paramContext);
      }
    }
    Validate.notNull(localObject1, "applicationId");
    initializeStaticContext(paramContext);
    paramContext = paramTokenCachingStrategy;
    if (paramTokenCachingStrategy == null) {
      paramContext = new SharedPreferencesTokenCachingStrategy(staticContext);
    }
    applicationId = ((String)localObject1);
    tokenCachingStrategy = paramContext;
    state = SessionState.CREATED;
    pendingAuthorizationRequest = null;
    callbacks = new ArrayList();
    handler = new Handler(Looper.getMainLooper());
    paramString = (String)localObject2;
    if (paramBoolean) {
      paramString = paramContext.load();
    }
    if (TokenCachingStrategy.hasTokenInformation(paramString))
    {
      paramTokenCachingStrategy = TokenCachingStrategy.getDate(paramString, "com.facebook.TokenCachingStrategy.ExpirationDate");
      localObject1 = new Date();
      if ((paramTokenCachingStrategy == null) || (paramTokenCachingStrategy.before((Date)localObject1)))
      {
        paramContext.clear();
        tokenInfo = AccessToken.createEmptyToken();
        return;
      }
      tokenInfo = AccessToken.createFromCache(paramString);
      state = SessionState.CREATED_TOKEN_LOADED;
      return;
    }
    tokenInfo = AccessToken.createEmptyToken();
  }
  
  private Session(String paramString, SessionState paramSessionState, AccessToken paramAccessToken, Date paramDate, boolean paramBoolean, Session.AuthorizationRequest paramAuthorizationRequest)
  {
    applicationId = paramString;
    state = paramSessionState;
    tokenInfo = paramAccessToken;
    lastAttemptedTokenExtendDate = paramDate;
    pendingAuthorizationRequest = paramAuthorizationRequest;
    handler = new Handler(Looper.getMainLooper());
    currentTokenRefreshRequest = null;
    tokenCachingStrategy = null;
    callbacks = new ArrayList();
  }
  
  private Session(String paramString, SessionState paramSessionState, AccessToken paramAccessToken, Date paramDate, boolean paramBoolean, Session.AuthorizationRequest paramAuthorizationRequest, Set<String> paramSet)
  {
    applicationId = paramString;
    state = paramSessionState;
    tokenInfo = paramAccessToken;
    lastAttemptedTokenExtendDate = paramDate;
    pendingAuthorizationRequest = paramAuthorizationRequest;
    handler = new Handler(Looper.getMainLooper());
    currentTokenRefreshRequest = null;
    tokenCachingStrategy = null;
    callbacks = new ArrayList();
  }
  
  private static boolean areEqual(Object paramObject1, Object paramObject2)
  {
    if (paramObject1 == null) {
      return paramObject2 == null;
    }
    return paramObject1.equals(paramObject2);
  }
  
  private void autoPublishAsync()
  {
    Object localObject3 = null;
    Object localObject1 = localObject3;
    try
    {
      if (autoPublishAsyncTask == null)
      {
        localObject1 = localObject3;
        if (Settings.getShouldAutoPublishInstall())
        {
          String str = applicationId;
          localObject1 = localObject3;
          if (str != null)
          {
            localObject1 = new Session.AutoPublishAsyncTask(this, str, staticContext);
            autoPublishAsyncTask = ((Session.AutoPublishAsyncTask)localObject1);
          }
        }
      }
      if (localObject1 != null) {
        ((Session.AutoPublishAsyncTask)localObject1).execute(new Void[0]);
      }
      return;
    }
    finally {}
  }
  
  private void finishAuthorization(AccessToken paramAccessToken, Exception paramException)
  {
    SessionState localSessionState = state;
    if (paramAccessToken != null)
    {
      tokenInfo = paramAccessToken;
      saveTokenToCache(paramAccessToken);
      state = SessionState.OPENED;
    }
    for (;;)
    {
      pendingAuthorizationRequest = null;
      postStateChange(localSessionState, state, paramException);
      return;
      if (paramException != null) {
        state = SessionState.CLOSED_LOGIN_FAILED;
      }
    }
  }
  
  private void finishReauthorization(AccessToken paramAccessToken, Exception paramException)
  {
    SessionState localSessionState = state;
    if (paramAccessToken != null)
    {
      tokenInfo = paramAccessToken;
      saveTokenToCache(paramAccessToken);
      state = SessionState.OPENED_TOKEN_UPDATED;
    }
    pendingAuthorizationRequest = null;
    postStateChange(localSessionState, state, paramException);
  }
  
  public static final Session getActiveSession()
  {
    synchronized (STATIC_LOCK)
    {
      Session localSession = activeSession;
      return localSession;
    }
  }
  
  private AppEventsLogger getAppEventsLogger()
  {
    synchronized (lock)
    {
      if (appEventsLogger == null) {
        appEventsLogger = AppEventsLogger.newLogger(staticContext, applicationId);
      }
      AppEventsLogger localAppEventsLogger = appEventsLogger;
      return localAppEventsLogger;
    }
  }
  
  private Intent getLoginActivityIntent(Session.AuthorizationRequest paramAuthorizationRequest)
  {
    Intent localIntent = new Intent();
    localIntent.setClass(getStaticContext(), LoginActivity.class);
    localIntent.setAction(paramAuthorizationRequest.getLoginBehavior().toString());
    localIntent.putExtras(LoginActivity.populateIntentExtras(paramAuthorizationRequest.getAuthorizationClientRequest()));
    return localIntent;
  }
  
  static Context getStaticContext()
  {
    return staticContext;
  }
  
  private void handleAuthorizationResult(int paramInt, AuthorizationClient.Result paramResult)
  {
    AccessToken localAccessToken;
    Object localObject;
    if (paramInt == -1) {
      if (code == AuthorizationClient.Result.Code.SUCCESS)
      {
        localAccessToken = token;
        localObject = null;
      }
    }
    for (;;)
    {
      logAuthorizationComplete(code, loggingExtras, (Exception)localObject);
      authorizationClient = null;
      finishAuthOrReauth(localAccessToken, (Exception)localObject);
      return;
      localObject = new FacebookAuthorizationException(errorMessage);
      localAccessToken = null;
      continue;
      if (paramInt == 0)
      {
        localObject = new FacebookOperationCanceledException(errorMessage);
        localAccessToken = null;
      }
      else
      {
        localObject = null;
        localAccessToken = null;
      }
    }
  }
  
  static Session.PermissionsPair handlePermissionResponse(Response paramResponse)
  {
    if (paramResponse.getError() != null) {
      return null;
    }
    paramResponse = (GraphMultiResult)paramResponse.getGraphObjectAs(GraphMultiResult.class);
    if (paramResponse == null) {
      return null;
    }
    Object localObject1 = paramResponse.getData();
    if ((localObject1 == null) || (((GraphObjectList)localObject1).size() == 0)) {
      return null;
    }
    paramResponse = new ArrayList(((GraphObjectList)localObject1).size());
    ArrayList localArrayList = new ArrayList(((GraphObjectList)localObject1).size());
    Object localObject2 = (GraphObject)((GraphObjectList)localObject1).get(0);
    if (((GraphObject)localObject2).getProperty("permission") != null)
    {
      localObject1 = ((GraphObjectList)localObject1).iterator();
      while (((Iterator)localObject1).hasNext())
      {
        Object localObject3 = (GraphObject)((Iterator)localObject1).next();
        localObject2 = (String)((GraphObject)localObject3).getProperty("permission");
        if (!((String)localObject2).equals("installed"))
        {
          localObject3 = (String)((GraphObject)localObject3).getProperty("status");
          if (((String)localObject3).equals("granted")) {
            paramResponse.add(localObject2);
          } else if (((String)localObject3).equals("declined")) {
            localArrayList.add(localObject2);
          }
        }
      }
    }
    localObject1 = ((GraphObject)localObject2).asMap().entrySet().iterator();
    while (((Iterator)localObject1).hasNext())
    {
      localObject2 = (Map.Entry)((Iterator)localObject1).next();
      if ((!((String)((Map.Entry)localObject2).getKey()).equals("installed")) && (((Integer)((Map.Entry)localObject2).getValue()).intValue() == 1)) {
        paramResponse.add(((Map.Entry)localObject2).getKey());
      }
    }
    return new Session.PermissionsPair(paramResponse, localArrayList);
  }
  
  static void initializeStaticContext(Context paramContext)
  {
    if ((paramContext != null) && (staticContext == null))
    {
      Context localContext = paramContext.getApplicationContext();
      if (localContext != null) {
        paramContext = localContext;
      }
      staticContext = paramContext;
    }
  }
  
  public static boolean isPublishPermission(String paramString)
  {
    return (paramString != null) && ((paramString.startsWith("publish")) || (paramString.startsWith("manage")) || (OTHER_PUBLISH_PERMISSIONS.contains(paramString)));
  }
  
  private void logAuthorizationComplete(AuthorizationClient.Result.Code paramCode, Map<String, String> paramMap, Exception paramException)
  {
    if (pendingAuthorizationRequest == null)
    {
      paramCode = AuthorizationClient.newAuthorizationLoggingBundle("");
      paramCode.putString("2_result", AuthorizationClient.Result.Code.ERROR.getLoggingValue());
      paramCode.putString("5_error_message", "Unexpected call to logAuthorizationComplete with null pendingAuthorizationRequest.");
      paramCode.putLong("1_timestamp_ms", System.currentTimeMillis());
      getAppEventsLogger().logSdkEvent("fb_mobile_login_complete", null, paramCode);
      return;
    }
    Bundle localBundle = AuthorizationClient.newAuthorizationLoggingBundle(pendingAuthorizationRequest.getAuthId());
    if (paramCode != null) {
      localBundle.putString("2_result", paramCode.getLoggingValue());
    }
    if ((paramException != null) && (paramException.getMessage() != null)) {
      localBundle.putString("5_error_message", paramException.getMessage());
    }
    if (!Session.AuthorizationRequest.access$500(pendingAuthorizationRequest).isEmpty()) {}
    for (paramCode = new JSONObject(Session.AuthorizationRequest.access$500(pendingAuthorizationRequest));; paramCode = null)
    {
      paramException = paramCode;
      if (paramMap != null)
      {
        if (paramCode != null) {
          break label243;
        }
        paramCode = new JSONObject();
      }
      label243:
      for (;;)
      {
        try
        {
          paramMap = paramMap.entrySet().iterator();
          if (paramMap.hasNext())
          {
            paramException = (Map.Entry)paramMap.next();
            paramCode.put((String)paramException.getKey(), paramException.getValue());
            continue;
            if (paramException == null) {}
          }
        }
        catch (JSONException paramMap)
        {
          paramException = paramCode;
        }
        for (;;)
        {
          localBundle.putString("6_extras", paramException.toString());
          paramCode = localBundle;
          break;
          paramException = paramCode;
        }
      }
    }
  }
  
  private void logAuthorizationStart()
  {
    Bundle localBundle = AuthorizationClient.newAuthorizationLoggingBundle(pendingAuthorizationRequest.getAuthId());
    localBundle.putLong("1_timestamp_ms", System.currentTimeMillis());
    try
    {
      JSONObject localJSONObject = new JSONObject();
      localJSONObject.put("login_behavior", Session.AuthorizationRequest.access$700(pendingAuthorizationRequest).toString());
      localJSONObject.put("request_code", Session.AuthorizationRequest.access$800(pendingAuthorizationRequest));
      localJSONObject.put("is_legacy", Session.AuthorizationRequest.access$600(pendingAuthorizationRequest));
      localJSONObject.put("permissions", TextUtils.join(",", Session.AuthorizationRequest.access$900(pendingAuthorizationRequest)));
      localJSONObject.put("default_audience", Session.AuthorizationRequest.access$1000(pendingAuthorizationRequest).toString());
      localBundle.putString("6_extras", localJSONObject.toString());
      getAppEventsLogger().logSdkEvent("fb_mobile_login_start", null, localBundle);
      return;
    }
    catch (JSONException localJSONException)
    {
      for (;;) {}
    }
  }
  
  private void open(Session.OpenRequest paramOpenRequest, SessionAuthorizationType paramSessionAuthorizationType)
  {
    validatePermissions(paramOpenRequest, paramSessionAuthorizationType);
    validateLoginBehavior(paramOpenRequest);
    for (;;)
    {
      SessionState localSessionState;
      synchronized (lock)
      {
        if (pendingAuthorizationRequest != null)
        {
          postStateChange(state, state, new UnsupportedOperationException("Session: an attempt was made to open a session that has a pending request."));
          return;
        }
        localSessionState = state;
        switch (Session.5.$SwitchMap$com$facebook$SessionState[state.ordinal()])
        {
        case 2: 
          throw new UnsupportedOperationException("Session: an attempt was made to open an already opened session.");
        }
      }
      paramSessionAuthorizationType = SessionState.OPENING;
      state = paramSessionAuthorizationType;
      if (paramOpenRequest == null) {
        throw new IllegalArgumentException("openRequest cannot be null when opening a new Session");
      }
      pendingAuthorizationRequest = paramOpenRequest;
      for (;;)
      {
        if (paramOpenRequest != null) {
          addCallback(paramOpenRequest.getCallback());
        }
        postStateChange(localSessionState, paramSessionAuthorizationType, null);
        if (paramSessionAuthorizationType != SessionState.OPENING) {
          break;
        }
        authorize(paramOpenRequest);
        return;
        if ((paramOpenRequest != null) && (!Utility.isNullOrEmpty(paramOpenRequest.getPermissions())) && (!Utility.isSubset(paramOpenRequest.getPermissions(), getPermissions()))) {
          pendingAuthorizationRequest = paramOpenRequest;
        }
        if (pendingAuthorizationRequest == null)
        {
          paramSessionAuthorizationType = SessionState.OPENED;
          state = paramSessionAuthorizationType;
        }
        else
        {
          paramSessionAuthorizationType = SessionState.OPENING;
          state = paramSessionAuthorizationType;
        }
      }
      return;
    }
  }
  
  public static Session openActiveSession(Activity paramActivity, boolean paramBoolean, Session.StatusCallback paramStatusCallback)
  {
    return openActiveSession(paramActivity, paramBoolean, new Session.OpenRequest(paramActivity).setCallback(paramStatusCallback));
  }
  
  public static Session openActiveSession(Activity paramActivity, boolean paramBoolean, List<String> paramList, Session.StatusCallback paramStatusCallback)
  {
    return openActiveSession(paramActivity, paramBoolean, new Session.OpenRequest(paramActivity).setCallback(paramStatusCallback).setPermissions(paramList));
  }
  
  public static Session openActiveSession(Context paramContext, Fragment paramFragment, boolean paramBoolean, Session.StatusCallback paramStatusCallback)
  {
    return openActiveSession(paramContext, paramBoolean, new Session.OpenRequest(paramFragment).setCallback(paramStatusCallback));
  }
  
  public static Session openActiveSession(Context paramContext, Fragment paramFragment, boolean paramBoolean, List<String> paramList, Session.StatusCallback paramStatusCallback)
  {
    return openActiveSession(paramContext, paramBoolean, new Session.OpenRequest(paramFragment).setCallback(paramStatusCallback).setPermissions(paramList));
  }
  
  private static Session openActiveSession(Context paramContext, boolean paramBoolean, Session.OpenRequest paramOpenRequest)
  {
    paramContext = new Session.Builder(paramContext).build();
    if ((SessionState.CREATED_TOKEN_LOADED.equals(paramContext.getState())) || (paramBoolean))
    {
      setActiveSession(paramContext);
      paramContext.openForRead(paramOpenRequest);
      return paramContext;
    }
    return null;
  }
  
  public static Session openActiveSessionFromCache(Context paramContext)
  {
    return openActiveSession(paramContext, false, null);
  }
  
  public static Session openActiveSessionWithAccessToken(Context paramContext, AccessToken paramAccessToken, Session.StatusCallback paramStatusCallback)
  {
    paramContext = new Session(paramContext, null, null, false);
    setActiveSession(paramContext);
    paramContext.open(paramAccessToken, paramStatusCallback);
    return paramContext;
  }
  
  static void postActiveSessionAction(String paramString)
  {
    paramString = new Intent(paramString);
    u.a(getStaticContext()).a(paramString);
  }
  
  private void readObject(ObjectInputStream paramObjectInputStream)
  {
    throw new InvalidObjectException("Cannot readObject, serialization proxy required");
  }
  
  private void requestNewPermissions(Session.NewPermissionsRequest paramNewPermissionsRequest, SessionAuthorizationType arg2)
  {
    validatePermissions(paramNewPermissionsRequest, ???);
    validateLoginBehavior(paramNewPermissionsRequest);
    if (paramNewPermissionsRequest != null)
    {
      synchronized (lock)
      {
        if (pendingAuthorizationRequest != null) {
          throw new UnsupportedOperationException("Session: an attempt was made to request new permissions for a session that has a pending request.");
        }
      }
      if (state.isOpened())
      {
        pendingAuthorizationRequest = paramNewPermissionsRequest;
        paramNewPermissionsRequest.setValidateSameFbidAsToken(getAccessToken());
        addCallback(paramNewPermissionsRequest.getCallback());
        authorize(paramNewPermissionsRequest);
      }
    }
    else
    {
      return;
    }
    if (state.isClosed()) {
      throw new UnsupportedOperationException("Session: an attempt was made to request new permissions for a session that has been closed.");
    }
    throw new UnsupportedOperationException("Session: an attempt was made to request new permissions for a session that is not currently open.");
  }
  
  private boolean resolveIntent(Intent paramIntent)
  {
    return getStaticContext().getPackageManager().resolveActivity(paramIntent, 0) != null;
  }
  
  public static final Session restoreSession(Context paramContext, TokenCachingStrategy paramTokenCachingStrategy, Session.StatusCallback paramStatusCallback, Bundle paramBundle)
  {
    if (paramBundle == null) {
      return null;
    }
    localObject = paramBundle.getByteArray("com.facebook.sdk.Session.saveSessionKey");
    if (localObject != null) {
      localObject = new ByteArrayInputStream((byte[])localObject);
    }
    try
    {
      localObject = (Session)new ObjectInputStream((InputStream)localObject).readObject();
      initializeStaticContext(paramContext);
      if (paramTokenCachingStrategy == null) {
        break label99;
      }
      tokenCachingStrategy = paramTokenCachingStrategy;
    }
    catch (ClassNotFoundException paramContext)
    {
      for (;;)
      {
        Log.w(TAG, "Unable to restore session", paramContext);
        return null;
        tokenCachingStrategy = new SharedPreferencesTokenCachingStrategy(paramContext);
      }
    }
    catch (IOException paramContext)
    {
      for (;;)
      {
        Log.w(TAG, "Unable to restore session.", paramContext);
      }
    }
    if (paramStatusCallback != null) {
      ((Session)localObject).addCallback(paramStatusCallback);
    }
    authorizationBundle = paramBundle.getBundle("com.facebook.sdk.Session.authBundleKey");
    return (Session)localObject;
  }
  
  private static void runWithHandlerOrExecutor(Handler paramHandler, Runnable paramRunnable)
  {
    if (paramHandler != null)
    {
      paramHandler.post(paramRunnable);
      return;
    }
    Settings.getExecutor().execute(paramRunnable);
  }
  
  public static final void saveSession(Session paramSession, Bundle paramBundle)
  {
    ByteArrayOutputStream localByteArrayOutputStream;
    if ((paramBundle != null) && (paramSession != null) && (!paramBundle.containsKey("com.facebook.sdk.Session.saveSessionKey"))) {
      localByteArrayOutputStream = new ByteArrayOutputStream();
    }
    try
    {
      new ObjectOutputStream(localByteArrayOutputStream).writeObject(paramSession);
      paramBundle.putByteArray("com.facebook.sdk.Session.saveSessionKey", localByteArrayOutputStream.toByteArray());
      paramBundle.putBundle("com.facebook.sdk.Session.authBundleKey", authorizationBundle);
      return;
    }
    catch (IOException paramSession)
    {
      throw new FacebookException("Unable to save session.", paramSession);
    }
  }
  
  private void saveTokenToCache(AccessToken paramAccessToken)
  {
    if ((paramAccessToken != null) && (tokenCachingStrategy != null)) {
      tokenCachingStrategy.save(paramAccessToken.toCacheBundle());
    }
  }
  
  public static final void setActiveSession(Session paramSession)
  {
    synchronized (STATIC_LOCK)
    {
      if (paramSession != activeSession)
      {
        Session localSession = activeSession;
        if (localSession != null) {
          localSession.close();
        }
        activeSession = paramSession;
        if (localSession != null) {
          postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_UNSET");
        }
        if (paramSession != null)
        {
          postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_SET");
          if (paramSession.isOpened()) {
            postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_OPENED");
          }
        }
      }
      return;
    }
  }
  
  private void tryLegacyAuth(Session.AuthorizationRequest paramAuthorizationRequest)
  {
    authorizationClient = new AuthorizationClient();
    authorizationClient.setOnCompletedListener(new Session.3(this));
    authorizationClient.setContext(getStaticContext());
    authorizationClient.startOrContinueAuth(paramAuthorizationRequest.getAuthorizationClientRequest());
  }
  
  private boolean tryLoginActivity(Session.AuthorizationRequest paramAuthorizationRequest)
  {
    Intent localIntent = getLoginActivityIntent(paramAuthorizationRequest);
    if (!resolveIntent(localIntent)) {
      return false;
    }
    try
    {
      paramAuthorizationRequest.getStartActivityDelegate().startActivityForResult(localIntent, paramAuthorizationRequest.getRequestCode());
      return true;
    }
    catch (ActivityNotFoundException paramAuthorizationRequest) {}
    return false;
  }
  
  private void validateLoginBehavior(Session.AuthorizationRequest paramAuthorizationRequest)
  {
    if ((paramAuthorizationRequest != null) && (!Session.AuthorizationRequest.access$600(paramAuthorizationRequest)))
    {
      Intent localIntent = new Intent();
      localIntent.setClass(getStaticContext(), LoginActivity.class);
      if (!resolveIntent(localIntent)) {
        throw new FacebookException(String.format("Cannot use SessionLoginBehavior %s when %s is not declared as an activity in AndroidManifest.xml", new Object[] { paramAuthorizationRequest.getLoginBehavior(), LoginActivity.class.getName() }));
      }
    }
  }
  
  private void validatePermissions(Session.AuthorizationRequest paramAuthorizationRequest, SessionAuthorizationType paramSessionAuthorizationType)
  {
    if ((paramAuthorizationRequest == null) || (Utility.isNullOrEmpty(paramAuthorizationRequest.getPermissions())))
    {
      if (SessionAuthorizationType.PUBLISH.equals(paramSessionAuthorizationType)) {
        throw new FacebookException("Cannot request publish or manage authorization with no permissions.");
      }
    }
    else
    {
      paramAuthorizationRequest = paramAuthorizationRequest.getPermissions().iterator();
      while (paramAuthorizationRequest.hasNext())
      {
        String str = (String)paramAuthorizationRequest.next();
        if (isPublishPermission(str))
        {
          if (SessionAuthorizationType.READ.equals(paramSessionAuthorizationType)) {
            throw new FacebookException(String.format("Cannot pass a publish or manage permission (%s) to a request for read authorization", new Object[] { str }));
          }
        }
        else if (SessionAuthorizationType.PUBLISH.equals(paramSessionAuthorizationType)) {
          Log.w(TAG, String.format("Should not pass a read permission (%s) to a request for publish or manage authorization", new Object[] { str }));
        }
      }
    }
  }
  
  private Object writeReplace()
  {
    return new Session.SerializationProxyV1(applicationId, state, tokenInfo, lastAttemptedTokenExtendDate, false, pendingAuthorizationRequest);
  }
  
  public final void addCallback(Session.StatusCallback paramStatusCallback)
  {
    List localList = callbacks;
    if (paramStatusCallback != null) {}
    try
    {
      if (!callbacks.contains(paramStatusCallback)) {
        callbacks.add(paramStatusCallback);
      }
      return;
    }
    finally {}
  }
  
  void authorize(Session.AuthorizationRequest arg1)
  {
    ???.setApplicationId(applicationId);
    autoPublishAsync();
    logAuthorizationStart();
    boolean bool = tryLoginActivity(???);
    Object localObject3 = Session.AuthorizationRequest.access$500(pendingAuthorizationRequest);
    Object localObject1;
    if (bool)
    {
      localObject1 = "1";
      ((Map)localObject3).put("try_login_activity", localObject1);
      if ((bool) || (!Session.AuthorizationRequest.access$600(???))) {
        break label194;
      }
      Session.AuthorizationRequest.access$500(pendingAuthorizationRequest).put("try_legacy", "1");
      tryLegacyAuth(???);
      bool = true;
      label88:
      if (bool) {}
    }
    for (;;)
    {
      synchronized (lock)
      {
        localObject1 = state;
        switch (Session.5.$SwitchMap$com$facebook$SessionState[state.ordinal()])
        {
        case 6: 
          state = SessionState.CLOSED_LOGIN_FAILED;
          localObject3 = new FacebookException("Log in attempt failed: LoginActivity could not be started, and not legacy request");
          logAuthorizationComplete(AuthorizationClient.Result.Code.ERROR, null, (Exception)localObject3);
          postStateChange((SessionState)localObject1, state, (Exception)localObject3);
          return;
          localObject1 = "0";
          break;
        case 7: 
          return;
        }
      }
      label194:
      break label88;
    }
  }
  
  public final void close()
  {
    for (;;)
    {
      synchronized (lock)
      {
        SessionState localSessionState1 = state;
        switch (Session.5.$SwitchMap$com$facebook$SessionState[state.ordinal()])
        {
        case 1: 
          return;
        case 2: 
          state = SessionState.CLOSED_LOGIN_FAILED;
          postStateChange(localSessionState1, state, new FacebookException("Log in attempt aborted."));
        }
      }
      state = SessionState.CLOSED;
      postStateChange(localSessionState2, state, null);
    }
  }
  
  public final void closeAndClearTokenInformation()
  {
    if (tokenCachingStrategy != null) {
      tokenCachingStrategy.clear();
    }
    Utility.clearFacebookCookies(staticContext);
    Utility.clearCaches(staticContext);
    close();
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Session)) {}
    do
    {
      return false;
      paramObject = (Session)paramObject;
    } while ((!areEqual(applicationId, applicationId)) || (!areEqual(authorizationBundle, authorizationBundle)) || (!areEqual(state, state)) || (!areEqual(((Session)paramObject).getExpirationDate(), getExpirationDate())));
    return true;
  }
  
  void extendAccessToken()
  {
    Session.TokenRefreshRequest localTokenRefreshRequest = null;
    synchronized (lock)
    {
      if (currentTokenRefreshRequest == null)
      {
        localTokenRefreshRequest = new Session.TokenRefreshRequest(this);
        currentTokenRefreshRequest = localTokenRefreshRequest;
      }
      if (localTokenRefreshRequest != null) {
        localTokenRefreshRequest.bind();
      }
      return;
    }
  }
  
  void extendAccessTokenIfNeeded()
  {
    if (shouldExtendAccessToken()) {
      extendAccessToken();
    }
  }
  
  void extendTokenCompleted(Bundle paramBundle)
  {
    for (;;)
    {
      synchronized (lock)
      {
        SessionState localSessionState = state;
        switch (Session.5.$SwitchMap$com$facebook$SessionState[state.ordinal()])
        {
        case 4: 
          Log.d(TAG, "refreshToken ignored in state " + state);
          return;
          state = SessionState.OPENED_TOKEN_UPDATED;
          postStateChange(localSessionState, state, null);
        case 5: 
          tokenInfo = AccessToken.createFromRefresh(tokenInfo, paramBundle);
          if (tokenCachingStrategy != null) {
            tokenCachingStrategy.save(tokenInfo.toCacheBundle());
          }
          return;
        }
      }
    }
  }
  
  void finishAuthOrReauth(AccessToken arg1, Exception paramException)
  {
    AccessToken localAccessToken = ???;
    Object localObject = paramException;
    if (??? != null)
    {
      localAccessToken = ???;
      localObject = paramException;
      if (???.isInvalid())
      {
        localAccessToken = null;
        localObject = new FacebookException("Invalid access token.");
      }
    }
    for (;;)
    {
      synchronized (lock)
      {
        switch (Session.5.$SwitchMap$com$facebook$SessionState[state.ordinal()])
        {
        case 2: 
          return;
          finishAuthorization(localAccessToken, (Exception)localObject);
        }
      }
      finishReauthorization(localAccessToken, (Exception)localObject);
      continue;
      Log.d(TAG, "Unexpected call to finishAuthOrReauth in state " + state);
    }
  }
  
  public final String getAccessToken()
  {
    synchronized (lock)
    {
      if (tokenInfo == null)
      {
        str = null;
        return str;
      }
      String str = tokenInfo.getToken();
    }
  }
  
  public final String getApplicationId()
  {
    return applicationId;
  }
  
  public final Bundle getAuthorizationBundle()
  {
    synchronized (lock)
    {
      Bundle localBundle = authorizationBundle;
      return localBundle;
    }
  }
  
  public final List<String> getDeclinedPermissions()
  {
    synchronized (lock)
    {
      if (tokenInfo == null)
      {
        localObject1 = null;
        return (List<String>)localObject1;
      }
      Object localObject1 = tokenInfo.getDeclinedPermissions();
    }
  }
  
  public final Date getExpirationDate()
  {
    synchronized (lock)
    {
      if (tokenInfo == null)
      {
        localDate = null;
        return localDate;
      }
      Date localDate = tokenInfo.getExpires();
    }
  }
  
  Date getLastAttemptedTokenExtendDate()
  {
    return lastAttemptedTokenExtendDate;
  }
  
  public final List<String> getPermissions()
  {
    synchronized (lock)
    {
      if (tokenInfo == null)
      {
        localObject1 = null;
        return (List<String>)localObject1;
      }
      Object localObject1 = tokenInfo.getPermissions();
    }
  }
  
  public final SessionState getState()
  {
    synchronized (lock)
    {
      SessionState localSessionState = state;
      return localSessionState;
    }
  }
  
  AccessToken getTokenInfo()
  {
    return tokenInfo;
  }
  
  public int hashCode()
  {
    return 0;
  }
  
  public final boolean isClosed()
  {
    synchronized (lock)
    {
      boolean bool = state.isClosed();
      return bool;
    }
  }
  
  public final boolean isOpened()
  {
    synchronized (lock)
    {
      boolean bool = state.isOpened();
      return bool;
    }
  }
  
  public boolean isPermissionGranted(String paramString)
  {
    List localList = getPermissions();
    if (localList != null) {
      return localList.contains(paramString);
    }
    return false;
  }
  
  public final boolean onActivityResult(Activity arg1, int paramInt1, int paramInt2, Intent paramIntent)
  {
    Validate.notNull(???, "currentActivity");
    initializeStaticContext(???);
    Object localObject;
    synchronized (lock)
    {
      if ((pendingAuthorizationRequest == null) || (paramInt1 != pendingAuthorizationRequest.getRequestCode())) {
        return false;
      }
      localObject = AuthorizationClient.Result.Code.ERROR;
      if (paramIntent == null) {
        break label147;
      }
      ??? = (AuthorizationClient.Result)paramIntent.getSerializableExtra("com.facebook.LoginActivity:Result");
      if (??? != null)
      {
        handleAuthorizationResult(paramInt2, ???);
        return true;
      }
    }
    if (authorizationClient != null)
    {
      authorizationClient.onActivityResult(paramInt1, paramInt2, paramIntent);
      return true;
    }
    ??? = null;
    paramIntent = (Intent)localObject;
    for (;;)
    {
      localObject = ???;
      if (??? == null) {
        localObject = new FacebookException("Unexpected call to Session.onActivityResult");
      }
      logAuthorizationComplete(paramIntent, null, (Exception)localObject);
      finishAuthOrReauth(null, (Exception)localObject);
      return true;
      label147:
      if (paramInt2 == 0)
      {
        ??? = new FacebookOperationCanceledException("User canceled operation.");
        paramIntent = AuthorizationClient.Result.Code.CANCEL;
      }
      else
      {
        ??? = null;
        paramIntent = (Intent)localObject;
      }
    }
  }
  
  public final void open(AccessToken paramAccessToken, Session.StatusCallback paramStatusCallback)
  {
    synchronized (lock)
    {
      if (pendingAuthorizationRequest != null) {
        throw new UnsupportedOperationException("Session: an attempt was made to open a session that has a pending request.");
      }
    }
    if (state.isClosed()) {
      throw new UnsupportedOperationException("Session: an attempt was made to open a previously-closed session.");
    }
    if ((state != SessionState.CREATED) && (state != SessionState.CREATED_TOKEN_LOADED)) {
      throw new UnsupportedOperationException("Session: an attempt was made to open an already opened session.");
    }
    if (paramStatusCallback != null) {
      addCallback(paramStatusCallback);
    }
    tokenInfo = paramAccessToken;
    if (tokenCachingStrategy != null) {
      tokenCachingStrategy.save(paramAccessToken.toCacheBundle());
    }
    paramAccessToken = state;
    state = SessionState.OPENED;
    postStateChange(paramAccessToken, state, null);
    autoPublishAsync();
  }
  
  public final void openForPublish(Session.OpenRequest paramOpenRequest)
  {
    open(paramOpenRequest, SessionAuthorizationType.PUBLISH);
  }
  
  public final void openForRead(Session.OpenRequest paramOpenRequest)
  {
    open(paramOpenRequest, SessionAuthorizationType.READ);
  }
  
  void postStateChange(SessionState paramSessionState1, SessionState paramSessionState2, Exception paramException)
  {
    if ((paramSessionState1 == paramSessionState2) && (paramSessionState1 != SessionState.OPENED_TOKEN_UPDATED) && (paramException == null)) {}
    do
    {
      return;
      if (paramSessionState2.isClosed()) {
        tokenInfo = AccessToken.createEmptyToken();
      }
      paramException = new Session.4(this, paramSessionState2, paramException);
      runWithHandlerOrExecutor(handler, paramException);
    } while ((this != activeSession) || (paramSessionState1.isOpened() == paramSessionState2.isOpened()));
    if (paramSessionState2.isOpened())
    {
      postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_OPENED");
      return;
    }
    postActiveSessionAction("com.facebook.sdk.ACTIVE_SESSION_CLOSED");
  }
  
  public final void refreshPermissions()
  {
    Request localRequest = new Request(this, "me/permissions");
    localRequest.setCallback(new Session.2(this));
    localRequest.executeAsync();
  }
  
  public final void removeCallback(Session.StatusCallback paramStatusCallback)
  {
    synchronized (callbacks)
    {
      callbacks.remove(paramStatusCallback);
      return;
    }
  }
  
  public final void requestNewPublishPermissions(Session.NewPermissionsRequest paramNewPermissionsRequest)
  {
    requestNewPermissions(paramNewPermissionsRequest, SessionAuthorizationType.PUBLISH);
  }
  
  public final void requestNewReadPermissions(Session.NewPermissionsRequest paramNewPermissionsRequest)
  {
    requestNewPermissions(paramNewPermissionsRequest, SessionAuthorizationType.READ);
  }
  
  void setCurrentTokenRefreshRequest(Session.TokenRefreshRequest paramTokenRefreshRequest)
  {
    currentTokenRefreshRequest = paramTokenRefreshRequest;
  }
  
  void setLastAttemptedTokenExtendDate(Date paramDate)
  {
    lastAttemptedTokenExtendDate = paramDate;
  }
  
  void setTokenInfo(AccessToken paramAccessToken)
  {
    tokenInfo = paramAccessToken;
  }
  
  boolean shouldExtendAccessToken()
  {
    if (currentTokenRefreshRequest != null) {}
    Date localDate;
    do
    {
      return false;
      localDate = new Date();
    } while ((!state.isOpened()) || (!tokenInfo.getSource().canExtendToken()) || (localDate.getTime() - lastAttemptedTokenExtendDate.getTime() <= 3600000L) || (localDate.getTime() - tokenInfo.getLastRefresh().getTime() <= 86400000L));
    return true;
  }
  
  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder().append("{Session").append(" state:").append(state).append(", token:");
    if (tokenInfo == null)
    {
      localObject = "null";
      localStringBuilder = localStringBuilder.append(localObject).append(", appId:");
      if (applicationId != null) {
        break label90;
      }
    }
    label90:
    for (Object localObject = "null";; localObject = applicationId)
    {
      return (String)localObject + "}";
      localObject = tokenInfo;
      break;
    }
  }
}

/* Location:
 * Qualified Name:     com.facebook.Session
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */