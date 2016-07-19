package com.ooyala.android;

import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.os.AsyncTask;
import java.io.PrintStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Semaphore;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

class PlayerAPIClient
{
  public static final String HOOK = "-hook";
  private String _authToken = null;
  protected Context _context;
  protected String _domain = null;
  protected EmbedTokenGenerator _embedTokenGenerator;
  protected int _heartbeatInterval = 300;
  protected int _height = -1;
  private boolean _isHook;
  protected String _pcode = null;
  private UserInfo _userInfo;
  protected int _width = -1;
  
  public PlayerAPIClient() {}
  
  public PlayerAPIClient(String paramString1, String paramString2, EmbedTokenGenerator paramEmbedTokenGenerator)
  {
    _pcode = paramString1;
    _domain = paramString2;
    _embedTokenGenerator = paramEmbedTokenGenerator;
  }
  
  private Map<String, String> authorizeParams(List<String> paramList)
  {
    final HashMap localHashMap = new HashMap();
    StringBuilder localStringBuilder = new StringBuilder().append(Utils.device());
    if (_isHook) {}
    for (final Object localObject = "-hook";; localObject = "")
    {
      localHashMap.put("device", (String)localObject);
      localHashMap.put("domain", _domain);
      if (getAuthToken().length() > 0) {
        localHashMap.put("auth_token", getAuthToken());
      }
      if (_embedTokenGenerator != null)
      {
        localObject = new Semaphore(0);
        _embedTokenGenerator.getTokenForEmbedCodes(paramList, new EmbedTokenGeneratorCallback()
        {
          public void setEmbedToken(String paramAnonymousString)
          {
            localHashMap.put("embedToken", paramAnonymousString);
            localObject.release();
          }
        });
      }
      try
      {
        ((Semaphore)localObject).acquire();
        return localHashMap;
      }
      catch (InterruptedException paramList) {}
    }
    return localHashMap;
  }
  
  private Map<String, String> contentTreeParams(Map<String, String> paramMap)
  {
    HashMap localHashMap = new HashMap();
    if (paramMap != null) {
      localHashMap.putAll(paramMap);
    }
    StringBuilder localStringBuilder = new StringBuilder().append(Utils.device());
    if (_isHook) {}
    for (paramMap = "-hook";; paramMap = "")
    {
      localHashMap.put("device", paramMap);
      if ((_height > 0) && (_width > 0))
      {
        localHashMap.put("width", Integer.toString(_width));
        localHashMap.put("height", Integer.toString(_height));
      }
      return localHashMap;
    }
  }
  
  private JSONObject getContentTreeData(JSONObject paramJSONObject)
    throws OoyalaException
  {
    if (paramJSONObject == null) {
      throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_INVALID, "Content Tree response invalid (nil).");
    }
    for (;;)
    {
      JSONObject localJSONObject;
      try
      {
        if (paramJSONObject.isNull("errors")) {
          break;
        }
        localJSONObject = paramJSONObject.getJSONObject("errors");
        if ((localJSONObject.isNull("code")) || (localJSONObject.getInt("code") == 0)) {
          break;
        }
        OoyalaException.OoyalaErrorCode localOoyalaErrorCode = OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_INVALID;
        if (localJSONObject.isNull("message"))
        {
          paramJSONObject = "";
          throw new OoyalaException(localOoyalaErrorCode, paramJSONObject);
        }
      }
      catch (JSONException paramJSONObject)
      {
        System.out.println("JSONException: " + paramJSONObject);
        throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_INVALID, "Content tree response invalid (exception).");
      }
      paramJSONObject = localJSONObject.getString("message");
    }
    if (paramJSONObject.isNull("content_tree")) {
      throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_INVALID, "Content tree data does not exist.");
    }
    paramJSONObject = paramJSONObject.getJSONObject("content_tree");
    return paramJSONObject;
  }
  
  private void setAuthToken(String paramString)
  {
    _authToken = paramString;
    if (_context != null)
    {
      SharedPreferences.Editor localEditor = _context.getSharedPreferences("com.ooyala.android_preferences", 4).edit();
      localEditor.putString("authToken", paramString);
      localEditor.commit();
    }
  }
  
  private JSONObject verifyAuthorizeHeartbeatJSON(JSONObject paramJSONObject)
    throws OoyalaException
  {
    if (paramJSONObject == null) {
      throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_HEARTBEAT_FAILED, "response invalid (nil).");
    }
    if (paramJSONObject.isNull("message")) {
      throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_HEARTBEAT_FAILED, "response invalid (nil).");
    }
    try
    {
      if (!paramJSONObject.getString("message").equals("OK")) {
        throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_HEARTBEAT_FAILED, "response code (" + paramJSONObject.getString("message") + ").");
      }
    }
    catch (JSONException paramJSONObject)
    {
      throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_HEARTBEAT_FAILED, "response invalid (error).");
    }
    if (paramJSONObject.getInt("expires") < System.currentTimeMillis() / 1000L) {
      throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_HEARTBEAT_FAILED, "response expired.");
    }
    if (!paramJSONObject.isNull("auth_token")) {
      setAuthToken(paramJSONObject.getString("auth_token"));
    }
    return paramJSONObject;
  }
  
  private JSONObject verifyAuthorizeJSON(JSONObject paramJSONObject, List<String> paramList)
    throws OoyalaException
  {
    if (paramJSONObject == null) {
      throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_INVALID, "Authorization response invalid (nil).");
    }
    Object localObject;
    for (;;)
    {
      try
      {
        if (paramJSONObject.isNull("errors")) {
          break;
        }
        localObject = paramJSONObject.getJSONObject("errors");
        if ((((JSONObject)localObject).isNull("code")) || (((JSONObject)localObject).getInt("code") == 0)) {
          break;
        }
        paramList = OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_INVALID;
        if (((JSONObject)localObject).isNull("message"))
        {
          paramJSONObject = "";
          throw new OoyalaException(paramList, paramJSONObject);
        }
      }
      catch (JSONException paramJSONObject)
      {
        System.out.println("JSONException: " + paramJSONObject);
        throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_INVALID, "Authorization response invalid (exception).");
      }
      paramJSONObject = ((JSONObject)localObject).getString("message");
    }
    if (paramJSONObject.isNull("user_info")) {
      throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_INVALID, "User info data does not exist.");
    }
    if (paramJSONObject.isNull("authorization_data")) {
      throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_INVALID, "Authorization data does not exist.");
    }
    paramJSONObject = paramJSONObject.getJSONObject("authorization_data");
    paramList = paramList.iterator();
    while (paramList.hasNext())
    {
      localObject = (String)paramList.next();
      if ((paramJSONObject.isNull((String)localObject)) || (paramJSONObject.getJSONObject((String)localObject).isNull("authorized"))) {
        throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_INVALID, "Authorization invalid for embed code: " + (String)localObject);
      }
    }
    return paramJSONObject;
  }
  
  private JSONObject verifyContentTreeObject(JSONObject paramJSONObject, List<String> paramList)
    throws OoyalaException
  {
    paramJSONObject = getContentTreeData(paramJSONObject);
    if ((paramJSONObject != null) && (paramList != null))
    {
      paramList = paramList.iterator();
      while (paramList.hasNext())
      {
        String str = (String)paramList.next();
        if (paramJSONObject.isNull(str)) {
          throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_INVALID, "Content Tree response invalid (no key for: " + str + ").");
        }
      }
    }
    return paramJSONObject;
  }
  
  private JSONObject verifyContentTreeObject(JSONObject paramJSONObject, List<String> paramList1, List<String> paramList2)
    throws OoyalaException
  {
    paramJSONObject = getContentTreeData(paramJSONObject);
    if ((paramJSONObject != null) && (paramList1 != null))
    {
      JSONArray localJSONArray = paramJSONObject.names();
      if (((localJSONArray == null) || (localJSONArray.length() == 0)) && (paramList1.size() > 0)) {
        throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_INVALID, "Content Tree response did not contain any values.  Expected: " + paramList1.size());
      }
      int i = 0;
      try
      {
        while (i < localJSONArray.length())
        {
          paramList2.add(localJSONArray.getString(i));
          i += 1;
        }
        if (paramList2.size() == paramList1.size()) {
          break label220;
        }
      }
      catch (JSONException paramJSONObject)
      {
        System.out.println("JSONException: " + paramJSONObject);
        throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_INVALID, "Content tree response invalid (exception casting embedCode to String)");
      }
      throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_INVALID, "Content Tree response did not contain values for all external IDs. Found " + paramList2.size() + " of " + paramList1.size());
      label220:
      paramList1 = paramList2.iterator();
      while (paramList1.hasNext())
      {
        paramList2 = (String)paramList1.next();
        if (paramJSONObject.isNull(paramList2)) {
          throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_INVALID, "Content Tree response invalid (no key for: " + paramList2 + ").");
        }
      }
    }
    return paramJSONObject;
  }
  
  public Object authorize(AuthorizableItemInternal paramAuthorizableItemInternal, AuthorizeCallback paramAuthorizeCallback)
  {
    return authorizeEmbedCodes(paramAuthorizableItemInternal.embedCodesToAuthorize(), paramAuthorizableItemInternal, paramAuthorizeCallback);
  }
  
  public Object authorize(AuthorizableItemInternal paramAuthorizableItemInternal, PlayerInfo paramPlayerInfo, AuthorizeCallback paramAuthorizeCallback)
  {
    return authorizeEmbedCodes(paramAuthorizableItemInternal.embedCodesToAuthorize(), paramAuthorizableItemInternal, paramPlayerInfo, paramAuthorizeCallback);
  }
  
  public boolean authorize(AuthorizableItemInternal paramAuthorizableItemInternal)
    throws OoyalaException
  {
    return authorizeEmbedCodes(paramAuthorizableItemInternal.embedCodesToAuthorize(), paramAuthorizableItemInternal);
  }
  
  public boolean authorize(AuthorizableItemInternal paramAuthorizableItemInternal, PlayerInfo paramPlayerInfo)
    throws OoyalaException
  {
    return authorizeEmbedCodes(paramAuthorizableItemInternal.embedCodesToAuthorize(), paramAuthorizableItemInternal, paramPlayerInfo);
  }
  
  public Object authorizeEmbedCodes(List<String> paramList, AuthorizableItemInternal paramAuthorizableItemInternal, AuthorizeCallback paramAuthorizeCallback)
  {
    paramAuthorizeCallback = new AuthorizeTask(paramAuthorizeCallback);
    paramAuthorizeCallback.execute(new Object[] { paramList, paramAuthorizableItemInternal });
    return paramAuthorizeCallback;
  }
  
  public Object authorizeEmbedCodes(List<String> paramList, AuthorizableItemInternal paramAuthorizableItemInternal, PlayerInfo paramPlayerInfo, AuthorizeCallback paramAuthorizeCallback)
  {
    paramAuthorizeCallback = new AuthorizeTask(paramAuthorizeCallback);
    paramAuthorizeCallback.execute(new Object[] { paramList, paramAuthorizableItemInternal, paramPlayerInfo });
    return paramAuthorizeCallback;
  }
  
  public boolean authorizeEmbedCodes(List<String> paramList, AuthorizableItemInternal paramAuthorizableItemInternal)
    throws OoyalaException
  {
    Object localObject = String.format("/sas/player_api/v%s/authorization/embed_code/%s/%s", new Object[] { "1", _pcode, Utils.join(paramList, ",") });
    localObject = OoyalaAPIHelper.objectForAPI(Constants.AUTHORIZE_HOST, (String)localObject, authorizeParams(paramList));
    try
    {
      paramList = verifyAuthorizeJSON((JSONObject)localObject, paramList);
      if (!((JSONObject)localObject).isNull("auth_token")) {
        setAuthToken(((JSONObject)localObject).getString("auth_token"));
      }
      if (!((JSONObject)localObject).isNull("heartbeat_data"))
      {
        JSONObject localJSONObject = ((JSONObject)localObject).getJSONObject("heartbeat_data");
        if (!localJSONObject.isNull("heartbeat_interval")) {
          _heartbeatInterval = localJSONObject.getInt("heartbeat_interval");
        }
      }
      if (!((JSONObject)localObject).isNull("user_info")) {
        _userInfo = new UserInfo(((JSONObject)localObject).getJSONObject("user_info"));
      }
      if (paramAuthorizableItemInternal != null) {
        paramAuthorizableItemInternal.update(paramList);
      }
      return true;
    }
    catch (OoyalaException paramList)
    {
      System.out.println("Unable to authorize: " + paramList);
      throw paramList;
    }
    catch (JSONException paramList)
    {
      System.out.println("JSONException: " + paramList);
      throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_INVALID, "Authorization response invalid (exception).");
    }
  }
  
  public boolean authorizeEmbedCodes(List<String> paramList, AuthorizableItemInternal paramAuthorizableItemInternal, PlayerInfo paramPlayerInfo)
    throws OoyalaException
  {
    String str = String.format("/sas/player_api/v%s/authorization/embed_code/%s/%s", new Object[] { "1", _pcode, Utils.join(paramList, ",") });
    Map localMap = authorizeParams(paramList);
    StringBuilder localStringBuilder = new StringBuilder().append(paramPlayerInfo.getDevice());
    if (_isHook) {}
    for (Object localObject = "-hook";; localObject = "")
    {
      localMap.put("device", (String)localObject);
      if (paramPlayerInfo.getSupportedFormats() != null) {
        localMap.put("supportedFormats", Utils.join(paramPlayerInfo.getSupportedFormats(), ","));
      }
      if (paramPlayerInfo.getSupportedProfiles() != null) {
        localMap.put("profiles", Utils.join(paramPlayerInfo.getSupportedProfiles(), ","));
      }
      if (paramPlayerInfo.getMaxHeight() > 0) {
        localMap.put("maxHeight", Integer.toString(paramPlayerInfo.getMaxHeight()));
      }
      if (paramPlayerInfo.getMaxWidth() > 0) {
        localMap.put("maxWidth", Integer.toString(paramPlayerInfo.getMaxWidth()));
      }
      if (paramPlayerInfo.getMaxBitrate() > 0) {
        localMap.put("br", Integer.toString(paramPlayerInfo.getMaxBitrate()));
      }
      paramPlayerInfo = OoyalaAPIHelper.objectForAPI(Constants.AUTHORIZE_HOST, str, localMap);
      try
      {
        paramList = verifyAuthorizeJSON(paramPlayerInfo, paramList);
        if (!paramPlayerInfo.isNull("auth_token")) {
          setAuthToken(paramPlayerInfo.getString("auth_token"));
        }
        if (!paramPlayerInfo.isNull("heartbeat_data"))
        {
          localObject = paramPlayerInfo.getJSONObject("heartbeat_data");
          if (!((JSONObject)localObject).isNull("heartbeat_interval")) {
            _heartbeatInterval = ((JSONObject)localObject).getInt("heartbeat_interval");
          }
        }
        if (!paramPlayerInfo.isNull("user_info")) {
          _userInfo = new UserInfo(paramPlayerInfo.getJSONObject("user_info"));
        }
        if (paramAuthorizableItemInternal != null) {
          paramAuthorizableItemInternal.update(paramList);
        }
        return true;
      }
      catch (OoyalaException paramList)
      {
        System.out.println("Unable to authorize: " + paramList);
        throw paramList;
      }
      catch (JSONException paramList)
      {
        System.out.println("JSONException: " + paramList);
        throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_AUTHORIZATION_INVALID, "Authorization response invalid (exception).");
      }
    }
  }
  
  public Object authorizeHeartbeat(AuthorizeHeartbeatCallback paramAuthorizeHeartbeatCallback)
  {
    paramAuthorizeHeartbeatCallback = new AuthorizeHeartbeatTask(paramAuthorizeHeartbeatCallback);
    paramAuthorizeHeartbeatCallback.execute(new Void[0]);
    return paramAuthorizeHeartbeatCallback;
  }
  
  public boolean authorizeHeartbeat()
    throws OoyalaException
  {
    Object localObject = String.format("/sas/player_api/v%s/auth_heartbeat/pcode/%s/auth_token/%s", new Object[] { "1", _pcode, getAuthToken() });
    localObject = OoyalaAPIHelper.objectForAPI(Constants.AUTHORIZE_HOST, (String)localObject, null);
    try
    {
      localObject = verifyAuthorizeHeartbeatJSON((JSONObject)localObject);
      return localObject != null;
    }
    catch (OoyalaException localOoyalaException)
    {
      System.out.println("Unable to authorize: " + localOoyalaException);
      throw localOoyalaException;
    }
  }
  
  public void cancel(Object paramObject)
  {
    ((AsyncTask)paramObject).cancel(true);
  }
  
  public ContentItem contentTree(List<String> paramList)
    throws OoyalaException
  {
    return contentTreeWithAdSet(paramList, null);
  }
  
  public Object contentTree(List<String> paramList, ContentTreeCallback paramContentTreeCallback)
  {
    return contentTreeWithAdSet(paramList, null, paramContentTreeCallback);
  }
  
  public ContentItem contentTreeByExternalIds(List<String> paramList)
    throws OoyalaException
  {
    Object localObject1 = null;
    Object localObject2 = String.format("/player_api/v%s/content_tree/external_id/%s/%s", new Object[] { "1", _pcode, Utils.join(paramList, ",") });
    localObject2 = OoyalaAPIHelper.objectForAPI(Constants.CONTENT_TREE_HOST, (String)localObject2, contentTreeParams(null));
    if (localObject2 == null) {
      paramList = (List<String>)localObject1;
    }
    for (;;)
    {
      return paramList;
      localObject1 = new ArrayList();
      try
      {
        paramList = verifyContentTreeObject((JSONObject)localObject2, paramList, (List)localObject1);
        localObject1 = ContentItem.create(paramList, (List)localObject1, this);
        paramList = (List<String>)localObject1;
        if (localObject1 != null) {
          continue;
        }
        throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_INVALID, "Unknown Content Type");
      }
      catch (OoyalaException paramList)
      {
        System.out.println("Unable to create externalId objects: " + paramList);
        throw paramList;
      }
    }
  }
  
  public Object contentTreeByExternalIds(List<String> paramList, ContentTreeCallback paramContentTreeCallback)
  {
    return contentTreeByExternalIdsWithAdSetCode(paramList, null, paramContentTreeCallback);
  }
  
  public Object contentTreeByExternalIdsWithAdSetCode(List<String> paramList, String paramString, ContentTreeCallback paramContentTreeCallback)
  {
    paramString = new ContentTreeByExternalIdsTask(paramContentTreeCallback);
    paramContentTreeCallback = new ContentTreeTaskParam(null);
    idList = paramList;
    paramString.execute(new ContentTreeTaskParam[] { paramContentTreeCallback });
    return paramString;
  }
  
  public PaginatedItemResponse contentTreeNext(PaginatedParentItem paramPaginatedParentItem)
  {
    int i = 0;
    if (!paramPaginatedParentItem.hasMoreChildren()) {}
    Object localObject1;
    do
    {
      return null;
      localObject1 = String.format("/player_api/v%s/content_tree/next/%s/%s", new Object[] { "1", _pcode, paramPaginatedParentItem.getNextChildren() });
      localObject1 = OoyalaAPIHelper.objectForAPI(Constants.CONTENT_TREE_HOST, (String)localObject1, contentTreeParams(null));
    } while (localObject1 == null);
    Object localObject2 = new ArrayList();
    ((List)localObject2).add(paramPaginatedParentItem.getNextChildren());
    try
    {
      localObject1 = verifyContentTreeObject((JSONObject)localObject1, (List)localObject2);
      if (((JSONObject)localObject1).isNull(paramPaginatedParentItem.getNextChildren()))
      {
        System.out.println("Could not find token in content_tree_next response.");
        return null;
      }
    }
    catch (Exception paramPaginatedParentItem)
    {
      System.out.println("Unable to create next objects: " + paramPaginatedParentItem);
      return null;
    }
    try
    {
      localObject1 = ((JSONObject)localObject1).getJSONObject(paramPaginatedParentItem.getNextChildren());
      localObject2 = new JSONObject();
      ((JSONObject)localObject2).put(paramPaginatedParentItem.getEmbedCode(), localObject1);
      int j = paramPaginatedParentItem.childrenCount();
      paramPaginatedParentItem.update((JSONObject)localObject2);
      if (((JSONObject)localObject1).isNull("children")) {}
      for (;;)
      {
        return new PaginatedItemResponse(j, i);
        i = ((JSONObject)localObject1).getJSONArray("children").length();
      }
      return null;
    }
    catch (JSONException paramPaginatedParentItem)
    {
      System.out.println("Unable to create next objects due to JSON Exception: " + paramPaginatedParentItem);
    }
  }
  
  public Object contentTreeNext(PaginatedParentItem paramPaginatedParentItem, ContentTreeNextCallback paramContentTreeNextCallback)
  {
    paramContentTreeNextCallback = new ContentTreeNextTask(paramContentTreeNextCallback);
    paramContentTreeNextCallback.execute(new Object[] { paramPaginatedParentItem });
    return paramContentTreeNextCallback;
  }
  
  public ContentItem contentTreeWithAdSet(List<String> paramList, String paramString)
    throws OoyalaException
  {
    HashMap localHashMap = null;
    if (paramString != null)
    {
      localHashMap = new HashMap(1);
      localHashMap.put("adSetCode", paramString);
    }
    paramString = String.format("/player_api/v%s/content_tree/embed_code/%s/%s", new Object[] { "1", _pcode, Utils.join(paramList, ",") });
    paramString = OoyalaAPIHelper.objectForAPI(Constants.CONTENT_TREE_HOST, paramString, contentTreeParams(localHashMap));
    try
    {
      paramString = verifyContentTreeObject(paramString, paramList);
      paramList = ContentItem.create(paramString, paramList, this);
      if (paramList == null) {
        throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_CONTENT_TREE_INVALID, "Unknown Content Type");
      }
    }
    catch (OoyalaException paramList)
    {
      System.out.println("Unable to create objects: " + paramList);
      throw paramList;
    }
    return paramList;
  }
  
  public Object contentTreeWithAdSet(List<String> paramList, String paramString, ContentTreeCallback paramContentTreeCallback)
  {
    paramContentTreeCallback = new ContentTreeTask(paramContentTreeCallback);
    ContentTreeTaskParam localContentTreeTaskParam = new ContentTreeTaskParam(null);
    idList = paramList;
    adSetCode = paramString;
    paramContentTreeCallback.execute(new ContentTreeTaskParam[] { localContentTreeTaskParam });
    return paramContentTreeCallback;
  }
  
  public boolean fetchMetadata(ContentItem paramContentItem)
    throws OoyalaException
  {
    return fetchMetadataForEmbedCodes(paramContentItem.embedCodesToAuthorize(), paramContentItem);
  }
  
  public boolean fetchMetadataForEmbedCodes(List<String> paramList, AuthorizableItem paramAuthorizableItem)
    throws OoyalaException
  {
    paramList = String.format("/player_api/v%s/metadata/embed_code/%s/%s", new Object[] { "1", _pcode, Utils.join(paramList, ",") });
    paramList = OoyalaAPIHelper.objectForAPI(Constants.METADATA_HOST, paramList, contentTreeParams(null));
    if (paramList == null) {
      throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_METADATA_FETCH_FAILED, "Empty metadata response");
    }
    try
    {
      if (paramList.getJSONObject("errors").getInt("code") != 0) {
        throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_METADATA_FETCH_FAILED, "Non-zero metadata response code");
      }
    }
    catch (JSONException paramList)
    {
      throw new OoyalaException(OoyalaException.OoyalaErrorCode.ERROR_METADATA_FETCH_FAILED, "Failed to parse metadata");
    }
    ((ContentItem)paramAuthorizableItem).update(paramList.getJSONObject("metadata"));
    return true;
  }
  
  public String getAuthToken()
  {
    if (_authToken == null) {
      if (_context == null) {
        break label42;
      }
    }
    label42:
    for (_authToken = _context.getSharedPreferences("com.ooyala.android_preferences", 4).getString("authToken", "");; _authToken = "") {
      return _authToken;
    }
  }
  
  public String getDomain()
  {
    return _domain;
  }
  
  public int getHeartbeatInterval()
  {
    return _heartbeatInterval;
  }
  
  public String getPcode()
  {
    return _pcode;
  }
  
  public UserInfo getUserInfo()
  {
    return _userInfo;
  }
  
  public Object metadata(ContentItem paramContentItem, MetadataFetchedCallback paramMetadataFetchedCallback)
  {
    paramMetadataFetchedCallback = new MetadataFetchTask(paramMetadataFetchedCallback);
    MetadataFetchTaskParam localMetadataFetchTaskParam = new MetadataFetchTaskParam(null);
    item = paramContentItem;
    paramMetadataFetchedCallback.execute(new MetadataFetchTaskParam[] { localMetadataFetchTaskParam });
    return paramMetadataFetchedCallback;
  }
  
  public void setContext(Context paramContext)
  {
    _context = paramContext;
  }
  
  public void setHook()
  {
    _isHook = true;
  }
  
  public static abstract interface AuthorizeHeartbeatCallback
  {
    public abstract void callback(boolean paramBoolean, OoyalaException paramOoyalaException);
  }
  
  private class AuthorizeHeartbeatTask
    extends AsyncTask<Void, Void, Boolean>
  {
    protected PlayerAPIClient.AuthorizeHeartbeatCallback _callback = null;
    protected OoyalaException _error = null;
    
    public AuthorizeHeartbeatTask(PlayerAPIClient.AuthorizeHeartbeatCallback paramAuthorizeHeartbeatCallback)
    {
      _callback = paramAuthorizeHeartbeatCallback;
    }
    
    protected Boolean doInBackground(Void... paramVarArgs)
    {
      try
      {
        boolean bool = authorizeHeartbeat();
        return Boolean.valueOf(bool);
      }
      catch (OoyalaException paramVarArgs)
      {
        _error = paramVarArgs;
      }
      return Boolean.FALSE;
    }
    
    protected void onPostExecute(Boolean paramBoolean)
    {
      _callback.callback(paramBoolean.booleanValue(), _error);
    }
  }
  
  private class AuthorizeTask
    extends AsyncTask<Object, Integer, Boolean>
  {
    protected AuthorizeCallback _callback = null;
    protected OoyalaException _error = null;
    
    public AuthorizeTask(AuthorizeCallback paramAuthorizeCallback)
    {
      _callback = paramAuthorizeCallback;
    }
    
    protected Boolean doInBackground(Object... paramVarArgs)
    {
      if (paramVarArgs.length < 2) {
        return Boolean.valueOf(false);
      }
      if (!(paramVarArgs[0] instanceof List)) {
        return Boolean.valueOf(false);
      }
      List localList = (List)paramVarArgs[0];
      if ((paramVarArgs[1] instanceof AuthorizableItemInternal)) {}
      for (AuthorizableItemInternal localAuthorizableItemInternal = (AuthorizableItemInternal)paramVarArgs[1];; localAuthorizableItemInternal = null) {
        switch (paramVarArgs.length)
        {
        default: 
          return Boolean.valueOf(false);
        }
      }
      boolean bool;
      try
      {
        bool = authorizeEmbedCodes(localList, localAuthorizableItemInternal);
        return Boolean.valueOf(bool);
      }
      catch (OoyalaException paramVarArgs)
      {
        _error = paramVarArgs;
        return Boolean.valueOf(false);
      }
      if ((paramVarArgs[2] instanceof PlayerInfo)) {}
      for (paramVarArgs = (PlayerInfo)paramVarArgs[2];; paramVarArgs = null) {
        try
        {
          bool = authorizeEmbedCodes(localList, localAuthorizableItemInternal, paramVarArgs);
          return Boolean.valueOf(bool);
        }
        catch (OoyalaException paramVarArgs)
        {
          _error = paramVarArgs;
        }
      }
      return Boolean.valueOf(false);
    }
    
    protected void onPostExecute(Boolean paramBoolean)
    {
      _callback.callback(paramBoolean.booleanValue(), _error);
    }
  }
  
  private class ContentTreeByExternalIdsTask
    extends PlayerAPIClient.ContentTreeTask
  {
    public ContentTreeByExternalIdsTask(ContentTreeCallback paramContentTreeCallback)
    {
      super(paramContentTreeCallback);
    }
    
    protected ContentItem doInBackground(PlayerAPIClient.ContentTreeTaskParam... paramVarArgs)
    {
      if ((paramVarArgs.length == 0) || (paramVarArgs[0] == null) || (0idList == null) || (0idList.isEmpty())) {
        return null;
      }
      try
      {
        paramVarArgs = contentTreeByExternalIds(0idList);
        return paramVarArgs;
      }
      catch (OoyalaException paramVarArgs)
      {
        _error = paramVarArgs;
      }
      return null;
    }
  }
  
  private class ContentTreeNextTask
    extends AsyncTask<Object, Integer, PaginatedItemResponse>
  {
    protected ContentTreeNextCallback _callback = null;
    protected OoyalaException _error = null;
    
    public ContentTreeNextTask(ContentTreeNextCallback paramContentTreeNextCallback)
    {
      _callback = paramContentTreeNextCallback;
    }
    
    protected PaginatedItemResponse doInBackground(Object... paramVarArgs)
    {
      if ((paramVarArgs.length < 1) || (paramVarArgs[0] == null) || (!(paramVarArgs[0] instanceof PaginatedParentItem))) {
        return null;
      }
      return contentTreeNext((PaginatedParentItem)paramVarArgs[1]);
    }
    
    protected void onPostExecute(PaginatedItemResponse paramPaginatedItemResponse)
    {
      _callback.callback(paramPaginatedItemResponse, _error);
    }
  }
  
  private class ContentTreeTask
    extends AsyncTask<PlayerAPIClient.ContentTreeTaskParam, Integer, ContentItem>
  {
    protected ContentTreeCallback _callback = null;
    protected OoyalaException _error = null;
    
    public ContentTreeTask(ContentTreeCallback paramContentTreeCallback)
    {
      _callback = paramContentTreeCallback;
    }
    
    protected ContentItem doInBackground(PlayerAPIClient.ContentTreeTaskParam... paramVarArgs)
    {
      if ((paramVarArgs.length == 0) || (paramVarArgs[0] == null) || (0idList == null) || (0idList.isEmpty())) {
        return null;
      }
      try
      {
        paramVarArgs = contentTreeWithAdSet(0idList, 0adSetCode);
        return paramVarArgs;
      }
      catch (OoyalaException paramVarArgs)
      {
        _error = paramVarArgs;
      }
      return null;
    }
    
    protected void onPostExecute(ContentItem paramContentItem)
    {
      _callback.callback(paramContentItem, _error);
    }
  }
  
  private class ContentTreeTaskParam
  {
    public String adSetCode;
    public List<String> idList;
    
    private ContentTreeTaskParam() {}
  }
  
  private class MetadataFetchTask
    extends AsyncTask<PlayerAPIClient.MetadataFetchTaskParam, Integer, Boolean>
  {
    protected MetadataFetchedCallback _callback = null;
    protected OoyalaException _error = null;
    
    public MetadataFetchTask(MetadataFetchedCallback paramMetadataFetchedCallback)
    {
      _callback = paramMetadataFetchedCallback;
    }
    
    protected Boolean doInBackground(PlayerAPIClient.MetadataFetchTaskParam... paramVarArgs)
    {
      if ((paramVarArgs.length == 0) || (paramVarArgs[0] == null) || (0item == null)) {
        return Boolean.valueOf(false);
      }
      try
      {
        boolean bool = fetchMetadata(0item);
        return Boolean.valueOf(bool);
      }
      catch (OoyalaException paramVarArgs)
      {
        _error = paramVarArgs;
      }
      return null;
    }
    
    protected void onPostExecute(Boolean paramBoolean)
    {
      _callback.callback(paramBoolean.booleanValue(), _error);
    }
  }
  
  private class MetadataFetchTaskParam
  {
    public ContentItem item;
    
    private MetadataFetchTaskParam() {}
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.PlayerAPIClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */