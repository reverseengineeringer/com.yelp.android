package com.yelp.android.ui.activities.support;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.app.AlertDialog;
import android.app.AlertDialog.Builder;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.net.Uri;
import android.net.Uri.Builder;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.SystemClock;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.webkit.CookieManager;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebSettings.PluginState;
import android.webkit.WebView;
import com.yelp.android.analytics.iris.EventIri;
import com.yelp.android.analytics.iris.ViewIri;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.n;
import com.yelp.android.appdata.webrequests.dc;
import com.yelp.android.appdata.webrequests.dl;
import com.yelp.android.services.d;
import com.yelp.android.services.x;
import com.yelp.android.ui.activities.ActivityLogin;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.f;
import com.yelp.android.util.m;
import java.io.File;
import java.io.UnsupportedEncodingException;
import java.lang.reflect.Method;
import java.net.URLEncoder;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import java.util.UUID;
import org.apache.http.client.CookieStore;
import org.apache.http.impl.client.DefaultHttpClient;

public class WebViewActivity
  extends YelpActivity
{
  public static final String EXTRA_WEBVIEW_DONE = "com.yelp.android.webview_done";
  public static final String EXTRA_WEBVIEW_HAS_DETAILS = "com.yelp.android.webview_has_details";
  public static final String EXTRA_WEBVIEW_SUBTITLE = "com.yelp.android.webview_subtitle";
  public static final String EXTRA_WEBVIEW_TITLE = "com.yelp.android.webview_title";
  private static final String JAVASCRIPT_EVENT_INTERFACE = "androidWebview";
  private static final String KEY_ADD_WEBVIEW_ID = "key.add_webview_id";
  private static final String KEY_BIZ_DIMENSION = "key.biz_dimension";
  private static final String KEY_CONFIRM = "key.confirm";
  private static final String KEY_FEATURES = "key.features";
  private static final String KEY_IRI = "key.iri";
  private static final String KEY_IS_PLATFORM_FLOW = "key.is_platform_flow";
  private static final String KEY_SOURCE = "key.source";
  private static final String KEY_TITLE = "key.title";
  private static final String KEY_URI = "key.uri";
  private static final String LEAST_SIG_BITS = "least";
  private static final String MOST_SIG_BITS = "most";
  private static final String REDIRECT_URL = "redirect_url";
  public static final String SOURCE_BUSINESS_PAGE = "source_business_page";
  public static final String SOURCE_SEARCH_PAGE = "source_search_page";
  private static final String WEBVIEW_ID = "webview_id";
  public static final String WEBVIEW_LOG_TAG = "WEBVIEW";
  private static ArrayList<String> mDomains;
  private Object lock = new Object();
  private Collection<WebViewActivity.Feature> mFeatures;
  private boolean mHaveSentPlatformTiming;
  private final b mJavascriptEventCallback = new WebViewActivity.4(this);
  private boolean mLoadingScreenShowing = true;
  private long mStartTimeMilliseconds;
  private int mTimesLoadingScreenShown;
  private WebView mWebView;
  private UUID mWebViewId;
  
  private void closeWebSession()
  {
    Object localObject1 = new Uri.Builder().scheme("https").authority(x.a(this)).build();
    localObject1 = CookieManager.getInstance().getCookie(((Uri)localObject1).toString());
    if (!TextUtils.isEmpty((CharSequence)localObject1))
    {
      Object localObject2 = m.a((String)localObject1);
      localObject1 = m.a((List)localObject2, x.a("ss"));
      localObject2 = m.a((List)localObject2, x.a("s"));
      if ((!TextUtils.isEmpty((CharSequence)localObject1)) && (!TextUtils.isEmpty((CharSequence)localObject2))) {
        new dl((String)localObject1, (String)localObject2).execute(new Void[0]);
      }
    }
  }
  
  private void confirmAndFinish()
  {
    if (!mFeatures.contains(WebViewActivity.Feature.FINISH_ON_BACK)) {
      throw new IllegalStateException("You need to have FINISH_ON_BACK turned on for this");
    }
    int i = getIntent().getIntExtra("key.confirm", 0);
    if (i == 0)
    {
      sendPlatformCancelIrisIfNeeded(true);
      finish();
      return;
    }
    new AlertDialog.Builder(this).setMessage(getString(i)).setPositiveButton(2131166612, new WebViewActivity.3(this)).setNegativeButton(2131166006, new WebViewActivity.2(this)).create().show();
  }
  
  public static Intent getWebIntent(Context paramContext, Uri paramUri, String paramString, ViewIri paramViewIri, EnumSet<WebViewActivity.Feature> paramEnumSet)
  {
    return getWebIntent(paramContext, paramUri, paramString, paramViewIri, paramEnumSet, 0);
  }
  
  public static Intent getWebIntent(Context paramContext, Uri paramUri, String paramString, ViewIri paramViewIri, EnumSet<WebViewActivity.Feature> paramEnumSet, int paramInt)
  {
    Intent localIntent = new Intent(paramContext, WebViewActivity.class);
    localIntent.putExtra("key.iri", paramViewIri.name());
    localIntent.putExtra("key.title", paramString);
    localIntent.putExtra("key.uri", paramUri);
    localIntent.putExtra("key.confirm", paramInt);
    localIntent.putExtra("key.features", f.a(paramEnumSet));
    paramUri = localIntent;
    if (paramEnumSet.contains(WebViewActivity.Feature.LOGIN)) {
      paramUri = ActivityLogin.a(paramContext, 0, localIntent);
    }
    return paramUri;
  }
  
  public static Intent getWebIntent(Context paramContext, Uri paramUri, String paramString1, ViewIri paramViewIri, EnumSet<WebViewActivity.Feature> paramEnumSet, int paramInt, boolean paramBoolean, String paramString2, String paramString3)
  {
    paramContext = getWebIntent(paramContext, paramUri, paramString1, paramViewIri, paramEnumSet, paramInt);
    paramContext.putExtra("key.is_platform_flow", paramBoolean);
    if (!StringUtils.e(paramString2)) {
      paramContext.putExtra("key.biz_dimension", paramString2);
    }
    if (!StringUtils.e(paramString3)) {
      paramContext.putExtra("key.source", paramString3);
    }
    return paramContext;
  }
  
  public static Intent getWebIntent(Context paramContext, Uri paramUri, String paramString, ViewIri paramViewIri, EnumSet<WebViewActivity.Feature> paramEnumSet, boolean paramBoolean)
  {
    paramContext = getWebIntent(paramContext, paramUri, paramString, paramViewIri, paramEnumSet);
    paramContext.putExtra("key.add_webview_id", paramBoolean);
    return paramContext;
  }
  
  private static void initializeDomains(Context paramContext)
  {
    if (mDomains == null)
    {
      mDomains = new ArrayList();
      paramContext = paramContext.getResources().getStringArray(2131230740);
      int j = paramContext.length;
      int i = 0;
      while (i < j)
      {
        Object localObject = paramContext[i];
        mDomains.add(localObject);
        i += 1;
      }
    }
  }
  
  public static boolean isEventsFeatureSupported()
  {
    return n.a(17);
  }
  
  private void loadUrlForLoggedInUser(String paramString)
  {
    String str = m.a(d.b().getCookieStore().getCookies(), x.a("api_ss"));
    StringBuilder localStringBuilder = new StringBuilder(100);
    localStringBuilder.append("user_id=").append(getAppData().m().b());
    localStringBuilder.append("&session_token=").append(str);
    try
    {
      localStringBuilder.append("&return_url=").append(URLEncoder.encode(paramString, "UTF-8"));
      paramString = new Uri.Builder().path("webview_login").scheme("https").authority(x.a(this)).build();
      mWebView.postUrl(paramString.toString(), localStringBuilder.toString().getBytes());
      return;
    }
    catch (UnsupportedEncodingException paramString)
    {
      for (;;)
      {
        AppData.a("WEBVIEW", "%s\n%s", new Object[] { paramString.getMessage(), paramString.toString() });
        sendPlatformCancelIrisIfNeeded(true);
        finish();
      }
    }
  }
  
  @TargetApi(16)
  private void makeMoreSecure()
  {
    mWebView.getSettings().setAllowFileAccessFromFileURLs(false);
    mWebView.getSettings().setAllowUniversalAccessFromFileURLs(false);
  }
  
  private void sendPlatformCancelIrisIfNeeded(boolean paramBoolean)
  {
    TreeMap localTreeMap = new TreeMap();
    if (paramBoolean)
    {
      localTreeMap.put("cancel_state", "error");
      sendPlatformIrisIfNeeded(EventIri.BusinessPlatformCancel, EventIri.SearchPlatformCancel, localTreeMap);
      return;
    }
    for (;;)
    {
      synchronized (lock)
      {
        if ((mLoadingScreenShowing) && (mTimesLoadingScreenShown == 1)) {
          localTreeMap.put("cancel_state", "loading_initial");
        }
      }
      if ((mLoadingScreenShowing) && (mTimesLoadingScreenShown > 1)) {
        ((Map)localObject2).put("cancel_state", "loading");
      } else {
        ((Map)localObject2).put("cancel_state", "loaded");
      }
    }
  }
  
  private void sendPlatformConfirmedIrisIfNeeded()
  {
    sendPlatformIrisIfNeeded(EventIri.BusinessPlatformConfirmed, EventIri.SearchPlatformConfirmed, new TreeMap());
  }
  
  private void sendPlatformIrisIfNeeded(EventIri paramEventIri1, EventIri paramEventIri2, Map<String, Object> paramMap)
  {
    String str1 = getIntent().getStringExtra("key.biz_dimension");
    String str2 = getIntent().getStringExtra("key.source");
    if ((!StringUtils.e(str2)) && (!StringUtils.e(str1)))
    {
      paramMap.put("biz_dimension", str1);
      if (!str2.equals("source_business_page")) {
        break label66;
      }
      AppData.a(paramEventIri1, paramMap);
    }
    label66:
    while (!str2.equals("source_search_page")) {
      return;
    }
    AppData.a(paramEventIri2, paramMap);
  }
  
  @TargetApi(11)
  private void supportOnPause()
  {
    if (n.a(11)) {
      mWebView.onPause();
    }
    for (;;)
    {
      return;
      try
      {
        Method localMethod = WebView.class.getMethod("onPause", new Class[0]);
        if (localMethod != null)
        {
          localMethod.invoke(mWebView, new Object[0]);
          return;
        }
      }
      catch (Exception localException)
      {
        YelpLog.error(this, localException);
      }
    }
  }
  
  @TargetApi(11)
  private void supportOnResume()
  {
    if (n.a(11)) {
      mWebView.onResume();
    }
    for (;;)
    {
      return;
      try
      {
        Method localMethod = WebView.class.getMethod("onResume", new Class[0]);
        if (localMethod != null)
        {
          localMethod.invoke(mWebView, new Object[0]);
          return;
        }
      }
      catch (Exception localException)
      {
        YelpLog.error(this, localException);
      }
    }
  }
  
  private void toastIfDebug(String paramString) {}
  
  public void disableLoading()
  {
    synchronized (lock)
    {
      mLoadingScreenShowing = false;
      super.disableLoading();
      return;
    }
  }
  
  public void enableLoading()
  {
    synchronized (lock)
    {
      mTimesLoadingScreenShown += 1;
      mLoadingScreenShowing = true;
      super.enableLoading();
      return;
    }
  }
  
  public ViewIri getIri()
  {
    return ViewIri.valueOf(getIntent().getStringExtra("key.iri"));
  }
  
  public Map<String, Object> getParametersForIri(com.yelp.android.analytics.iris.b paramb)
  {
    paramb = new HashMap();
    paramb.put("webview_id", String.valueOf(mWebViewId));
    return paramb;
  }
  
  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    if ((paramInt2 == -1) && (paramInt1 == 1043) && (paramIntent != null)) {
      loadUrlForLoggedInUser(paramIntent.getStringExtra("redirect_url"));
    }
  }
  
  @SuppressLint({"SetJavaScriptEnabled", "InlinedApi", "AddJavascriptInterface"})
  @TargetApi(11)
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    initializeDomains(this);
    setTitle(getIntent().getStringExtra("key.title"));
    mFeatures = f.a(getIntent().getIntArrayExtra("key.features"), WebViewActivity.Feature.values());
    mWebView = new WebView(this);
    setContentView(mWebView);
    if (mFeatures.contains(WebViewActivity.Feature.FULL_SCREEN))
    {
      mWebView.getSettings().setLoadWithOverviewMode(true);
      mWebView.getSettings().setUseWideViewPort(true);
      mWebView.getSettings().setBuiltInZoomControls(true);
    }
    if (n.b(14)) {
      mWebView.setScrollBarStyle(0);
    }
    mWebView.getSettings().setAllowFileAccess(false);
    if (n.a(16))
    {
      makeMoreSecure();
      if (Build.VERSION.SDK_INT == 16) {
        mWebView.setLayerType(1, null);
      }
    }
    mWebView.getSettings().setDomStorageEnabled(true);
    mWebView.getSettings().setDatabaseEnabled(true);
    mWebView.getSettings().setDatabasePath(getApplicationContext().getDir("databases", 0).getPath());
    mWebView.getSettings().setPluginState(WebSettings.PluginState.OFF);
    mWebView.getSettings().setSavePassword(false);
    Object localObject = mWebView.getSettings().getUserAgentString();
    mWebView.getSettings().setUserAgentString(AppData.b().h().c((String)localObject));
    mWebView.getSettings().setJavaScriptEnabled(true);
    mWebView.getSettings().setGeolocationEnabled(false);
    mWebView.setWebViewClient(new WebViewActivity.1(this));
    boolean bool;
    if (mFeatures.contains(WebViewActivity.Feature.EVENTS))
    {
      if (isEventsFeatureSupported()) {
        mWebView.addJavascriptInterface(new JavaScriptEventInterface(new Handler(), mJavascriptEventCallback), "androidWebview");
      }
    }
    else
    {
      localObject = new WebViewActivity.EnhancedWebChromeClient(this);
      if (mFeatures.contains(WebViewActivity.Feature.EVENTS)) {
        break label566;
      }
      bool = true;
      label377:
      ((WebViewActivity.EnhancedWebChromeClient)localObject).setVirtualDisableLoadingByTitle(bool);
      if (mFeatures.contains(WebViewActivity.Feature.FULL_SCREEN)) {
        ((WebViewActivity.EnhancedWebChromeClient)localObject).freezeTitle();
      }
      mWebView.setWebChromeClient((WebChromeClient)localObject);
      if (paramBundle == null) {
        break label571;
      }
      mWebViewId = new UUID(paramBundle.getLong("most"), paramBundle.getLong("least"));
      label436:
      paramBundle = (Uri)getIntent().getParcelableExtra("key.uri");
      if (!getIntent().getBooleanExtra("key.add_webview_id", true)) {
        break label581;
      }
      paramBundle = paramBundle.buildUpon().appendQueryParameter("webview_id", String.valueOf(mWebViewId)).build().toString();
      label485:
      bool = getIntent().getBooleanExtra("key.is_platform_flow", false);
      if ((!mFeatures.contains(WebViewActivity.Feature.LOGIN)) && ((!bool) || (!getAppData().m().c()))) {
        break label589;
      }
      loadUrlForLoggedInUser(paramBundle);
    }
    for (;;)
    {
      mStartTimeMilliseconds = SystemClock.elapsedRealtime();
      return;
      YelpLog.error(new IllegalStateException("WebViewActivity is requesting Javascript events on an unsupported device."));
      sendPlatformCancelIrisIfNeeded(true);
      finish();
      break;
      label566:
      bool = false;
      break label377;
      label571:
      mWebViewId = UUID.randomUUID();
      break label436;
      label581:
      paramBundle = paramBundle.toString();
      break label485;
      label589:
      mWebView.loadUrl(paramBundle);
    }
  }
  
  protected void onDestroy()
  {
    super.onDestroy();
    if (getAppData().m().c()) {
      closeWebSession();
    }
  }
  
  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      if (mFeatures.contains(WebViewActivity.Feature.FINISH_ON_BACK))
      {
        confirmAndFinish();
        return true;
      }
      if (mWebView.canGoBack())
      {
        mWebView.goBack();
        return true;
      }
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
  
  public boolean onOptionsItemSelected(MenuItem paramMenuItem)
  {
    if (paramMenuItem.getItemId() == 16908332)
    {
      if (mFeatures.contains(WebViewActivity.Feature.FINISH_ON_BACK))
      {
        confirmAndFinish();
        return true;
      }
      if (mWebView.canGoBack())
      {
        mWebView.goBack();
        return true;
      }
    }
    return super.onOptionsItemSelected(paramMenuItem);
  }
  
  protected void onPause()
  {
    super.onPause();
    supportOnPause();
  }
  
  protected void onResume()
  {
    super.onResume();
    supportOnResume();
  }
  
  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putLong("most", mWebViewId.getMostSignificantBits());
    paramBundle.putLong("least", mWebViewId.getLeastSignificantBits());
  }
  
  protected boolean shouldOverrideDomain(String paramString)
  {
    paramString = Uri.parse(paramString);
    if (("http".equals(paramString.getScheme())) || ("https".equals(paramString.getScheme()))) {}
    for (int i = 1; (i == 0) || (paramString.getHost() == null); i = 0) {
      return true;
    }
    paramString = paramString.getHost().toLowerCase(Locale.US);
    Iterator localIterator = mDomains.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (paramString.endsWith('.' + str.toLowerCase(Locale.US))) {
        return false;
      }
    }
    return true;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.WebViewActivity
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */