package com.yelp.android.ui.activities.support;

import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.net.http.SslError;
import android.os.SystemClock;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.yelp.android.analytics.iris.TimingIri;
import com.yelp.android.appdata.AppData;

class WebViewActivity$1
  extends WebViewClient
{
  WebViewActivity$1(WebViewActivity paramWebViewActivity) {}
  
  public void onLoadResource(WebView paramWebView, String paramString)
  {
    AppData.a("WEBVIEW", "Loading:- %s", new Object[] { paramString });
    super.onLoadResource(paramWebView, paramString);
  }
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    AppData.a("WEBVIEW", "Finished[%s]:", new Object[] { paramString });
    this$0.disableLoading();
    super.onPageFinished(paramWebView, paramString);
    if ((this$0.getIntent().getBooleanExtra("key.is_platform_flow", false)) && (!WebViewActivity.access$100(this$0)))
    {
      WebViewActivity.access$102(this$0, true);
      AppData.a(TimingIri.PlatformWebViewInitLoad, SystemClock.elapsedRealtime() - WebViewActivity.access$200(this$0));
    }
  }
  
  public void onPageStarted(WebView paramWebView, String paramString, Bitmap paramBitmap)
  {
    this$0.enableLoading();
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
    WebViewActivity.access$000(this$0, String.format("Error[%s](%s): %s", new Object[] { paramString2, Integer.valueOf(paramInt), paramString1 }));
    AppData.a("WEBVIEW", "Error[%s](%s): %s", new Object[] { paramString2, Integer.valueOf(paramInt), paramString1 });
  }
  
  public void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    WebViewActivity.access$000(this$0, String.format("Error[%s]:", new Object[] { paramSslError }));
    AppData.a("WEBVIEW", "Error[%s]:", new Object[] { paramSslError });
  }
  
  public boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    boolean bool = this$0.shouldOverrideDomain(paramString);
    if (bool)
    {
      paramWebView = new Intent("android.intent.action.VIEW", Uri.parse(paramString));
      this$0.startActivity(paramWebView);
    }
    return bool;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.WebViewActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */