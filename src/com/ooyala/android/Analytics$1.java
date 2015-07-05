package com.ooyala.android;

import android.util.Log;
import android.webkit.WebView;
import android.webkit.WebViewClient;

class Analytics$1
  extends WebViewClient
{
  Analytics$1(Analytics paramAnalytics) {}
  
  public void onPageFinished(WebView paramWebView, String paramString)
  {
    if ((!Analytics.access$000(this$0)) && (!Analytics.access$100(this$0)))
    {
      Analytics.access$002(this$0, true);
      Log.d(getClass().getName(), "Initialized Analytics.");
      Analytics.access$200(this$0);
    }
  }
  
  public void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    if (!Analytics.access$100(this$0))
    {
      Analytics.access$002(this$0, false);
      Analytics.access$102(this$0, true);
      Log.e(getClass().getName(), "ERROR: Failed to load js Analytics!");
    }
  }
}

/* Location:
 * Qualified Name:     com.ooyala.android.Analytics.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */