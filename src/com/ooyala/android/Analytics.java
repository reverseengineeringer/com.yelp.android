package com.ooyala.android;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.Log;
import android.webkit.WebSettings;
import android.webkit.WebView;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.PrintStream;
import java.lang.reflect.Method;
import java.net.MalformedURLException;
import java.net.URL;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Scanner;
import org.json.JSONObject;

@SuppressLint({"SetJavaScriptEnabled"})
public class Analytics
{
  private static final String EMBED_MODULEPARAMS_HTML = "<html><head><script src=\"_HOST__URI_\"></script><script>function _init() {reporter = new Ooyala.Reporter('_PCODE_',_MODULE_PARAMS_);console.log('...onLoad: domain='+document.domain);};</script></script></head><body onLoad=\"_init();\"></body></html>";
  private static final String TAG = "Analytics";
  private static final String TMP_EXT = ".html";
  private static final String TMP_PREFIX = "pb2823";
  private String _defaultUserAgent = "";
  private boolean _failed;
  private WebView _jsAnalytics;
  private List<String> _queue = new ArrayList();
  private boolean _ready;
  private String _userAgent = "";
  private TemporaryInternalStorageFileManager tmpBootHtmlFileManager = new TemporaryInternalStorageFileManager();
  
  Analytics(Context paramContext, PlayerAPIClient paramPlayerAPIClient)
  {
    this(paramContext, generateEmbedHTML(paramPlayerAPIClient), paramPlayerAPIClient.getDomain());
  }
  
  Analytics(Context paramContext, String paramString)
  {
    this(paramContext, paramString, "http://www.ooyala.com/analytics.html");
  }
  
  @SuppressLint({"SetJavaScriptEnabled"})
  private Analytics(Context paramContext, String paramString1, String paramString2)
  {
    _jsAnalytics = new WebView(paramContext);
    _defaultUserAgent = String.format("Ooyala Android SDK v%s [%s]", new Object[] { "2.2.0_RC12", _jsAnalytics.getSettings().getUserAgentString() });
    _userAgent = _defaultUserAgent;
    _jsAnalytics.getSettings().setUserAgentString(_defaultUserAgent);
    _jsAnalytics.getSettings().setJavaScriptEnabled(true);
    setAllowUniversalAccessFromFileURLs(_jsAnalytics.getSettings());
    _jsAnalytics.setWebViewClient(new Analytics.1(this));
    _jsAnalytics.setWebChromeClient(new Analytics.2(this));
    bootHtml(paramContext, paramString2, paramString1);
    Log.d("Analytics", "Initialized Analytics with user agent: " + _jsAnalytics.getSettings().getUserAgentString());
  }
  
  private void bootHtml(Context paramContext, String paramString1, String paramString2)
  {
    try
    {
      paramContext = tmpBootHtmlFileManager.next(paramContext, "pb2823", ".html");
      paramContext.write(paramString2);
      loadTmpBootHtmlFile(paramContext);
      return;
    }
    catch (IOException paramContext)
    {
      Log.e("Analytics", "failed: " + paramContext.getStackTrace());
      return;
    }
    catch (IllegalArgumentException paramContext)
    {
      Log.e("Analytics", "failed: " + paramContext.getStackTrace());
    }
  }
  
  private static String generateEmbedHTML(PlayerAPIClient paramPlayerAPIClient)
  {
    HashMap localHashMap = new HashMap();
    Object localObject = "http://www.ooyala.com/analytics.html";
    try
    {
      String str = new URL("http", paramPlayerAPIClient.getDomain(), "/").toString();
      localObject = str;
    }
    catch (MalformedURLException localMalformedURLException)
    {
      for (;;)
      {
        System.out.println("falling back to default analytics URL " + "http://www.ooyala.com/analytics.html");
      }
    }
    localHashMap.put("documentUrl", localObject);
    if ((paramPlayerAPIClient.getUserInfo() != null) && (paramPlayerAPIClient.getUserInfo().getAccountId() != null)) {
      localHashMap.put("accountId", paramPlayerAPIClient.getUserInfo().getAccountId());
    }
    return "<html><head><script src=\"_HOST__URI_\"></script><script>function _init() {reporter = new Ooyala.Reporter('_PCODE_',_MODULE_PARAMS_);console.log('...onLoad: domain='+document.domain);};</script></script></head><body onLoad=\"_init();\"></body></html>".replaceAll("_HOST_", Constants.JS_ANALYTICS_HOST).replaceAll("_URI_", "/reporter.js").replaceAll("_PCODE_", paramPlayerAPIClient.getPcode()).replaceAll("_MODULE_PARAMS_", new JSONObject(localHashMap).toString());
  }
  
  private void loadTmpBootHtmlFile(TemporaryInternalStorageFile paramTemporaryInternalStorageFile)
  {
    String str = "file://" + paramTemporaryInternalStorageFile.getAbsolutePath();
    Log.d("Analytics", "trying to load: " + str);
    try
    {
      paramTemporaryInternalStorageFile = new Scanner(paramTemporaryInternalStorageFile.getFile());
      try
      {
        for (;;)
        {
          Log.d("Analytics", paramTemporaryInternalStorageFile.nextLine());
        }
        _jsAnalytics.loadUrl(str);
      }
      catch (NoSuchElementException paramTemporaryInternalStorageFile) {}
    }
    catch (FileNotFoundException paramTemporaryInternalStorageFile)
    {
      for (;;) {}
    }
  }
  
  private void performQueuedActions()
  {
    Iterator localIterator = _queue.iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      _jsAnalytics.loadUrl(str);
    }
  }
  
  private void queue(String paramString)
  {
    _queue.add(paramString);
  }
  
  private static void setAllowUniversalAccessFromFileURLs(WebSettings paramWebSettings)
  {
    int i = 0;
    Method[] arrayOfMethod = paramWebSettings.getClass().getMethods();
    int j = arrayOfMethod.length;
    for (;;)
    {
      Method localMethod;
      if (i < j)
      {
        localMethod = arrayOfMethod[i];
        if (!localMethod.getName().equals("setAllowUniversalAccessFromFileURLs")) {}
      }
      else
      {
        try
        {
          localMethod.invoke(paramWebSettings, new Object[] { Boolean.valueOf(true) });
          return;
        }
        catch (Exception paramWebSettings)
        {
          Log.d("Analytics", "failed: " + paramWebSettings.getStackTrace());
          return;
        }
      }
      i += 1;
    }
  }
  
  void initializeVideo(String paramString, double paramDouble)
  {
    if (_failed) {
      return;
    }
    paramString = "javascript:reporter.initializeVideo('" + paramString + "'," + paramDouble + ");";
    if (!_ready)
    {
      queue(paramString);
      return;
    }
    _jsAnalytics.loadUrl(paramString);
  }
  
  void reportPlayStarted()
  {
    if (_failed) {
      return;
    }
    if (!_ready)
    {
      queue("javascript:reporter.reportPlayStarted();");
      return;
    }
    _jsAnalytics.loadUrl("javascript:reporter.reportPlayStarted();");
  }
  
  void reportPlayerLoad()
  {
    if (_failed) {
      return;
    }
    if (!_ready)
    {
      queue("javascript:reporter.reportPlayerLoad();");
      return;
    }
    _jsAnalytics.loadUrl("javascript:reporter.reportPlayerLoad();");
  }
  
  void reportPlayheadUpdate(double paramDouble)
  {
    if (_failed) {
      return;
    }
    String str = "javascript:reporter.reportPlayheadUpdate(" + 1000.0D * paramDouble + ");";
    if (!_ready)
    {
      queue(str);
      return;
    }
    _jsAnalytics.loadUrl(str);
  }
  
  void reportReplay()
  {
    if (_failed) {
      return;
    }
    if (!_ready)
    {
      queue("javascript:reporter.reportReplay();");
      return;
    }
    _jsAnalytics.loadUrl("javascript:reporter.reportReplay();");
  }
  
  void setTags(List<String> paramList)
  {
    if (_failed) {
      return;
    }
    paramList = "javascript:reporter.setTags([\"" + Utils.join(paramList, "\",\"") + "\"]);";
    if (!_ready)
    {
      queue(paramList);
      return;
    }
    _jsAnalytics.loadUrl(paramList);
  }
  
  public void setUserAgent(String paramString)
  {
    if (paramString != null) {}
    for (_userAgent = paramString;; _userAgent = _defaultUserAgent)
    {
      _jsAnalytics.getSettings().setUserAgentString(_userAgent);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.Analytics
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */