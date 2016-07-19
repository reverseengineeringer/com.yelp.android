package com.yelp.android.ui.activities.support;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.yelp.android.appdata.AppData;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;

public class c
  extends WebViewClient
{
  private WebViewActivity a;
  
  public c(WebViewActivity paramWebViewActivity)
  {
    a = paramWebViewActivity;
  }
  
  private void b(String paramString) {}
  
  protected boolean a(String paramString)
  {
    paramString = Uri.parse(paramString);
    if (paramString.getScheme().equals("yelp-webview"))
    {
      YelpLog.i(this, "yelp-webview event: " + paramString.toString() + " ignored since the consumer app uses JNI instead.");
      return false;
    }
    if (("http".equals(paramString.getScheme())) || ("https".equals(paramString.getScheme()))) {}
    for (int i = 1; (i == 0) || (paramString.getHost() == null); i = 0) {
      return true;
    }
    paramString = paramString.getHost().toLowerCase(Locale.US);
    Iterator localIterator = a.getLocalizedDomains().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if (paramString.endsWith('.' + str.toLowerCase(Locale.US))) {
        return false;
      }
    }
    return true;
  }
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    AppData.a("WEBVIEW", "Loading:- %s", new Object[] { paramString });
    super.onLoadResource(paramWebView, paramString);
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    AppData.a("WEBVIEW", "Finished[%s]:", new Object[] { paramString });
    a.disableLoading();
    super.onPageFinished(paramWebView, paramString);
    a.onPageFinished();
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    a.enableLoading();
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    b(String.format("Error[%s](%s): %s", new Object[] { paramString2, Integer.valueOf(paramInt), paramString1 }));
    AppData.a("WEBVIEW", "Error[%s](%s): %s", new Object[] { paramString2, Integer.valueOf(paramInt), paramString1 });
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    b(String.format("Error[%s]:", new Object[] { paramSslError }));
    AppData.a("WEBVIEW", "Error[%s]:", new Object[] { paramSslError });
    YelpLog.remoteError("WEBVIEW", paramSslError.toString());
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    boolean bool = a(paramString);
    if (bool)
    {
      paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
      a.startActivity(paramWebView);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */