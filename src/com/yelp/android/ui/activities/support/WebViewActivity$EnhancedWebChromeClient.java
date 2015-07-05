package com.yelp.android.ui.activities.support;

import android.webkit.WebChromeClient;
import android.webkit.WebView;

class WebViewActivity$EnhancedWebChromeClient
  extends WebChromeClient
{
  private final WebViewActivity mActivity;
  private boolean mFreezeTitle = false;
  private boolean mShowLoading;
  
  public WebViewActivity$EnhancedWebChromeClient(WebViewActivity paramWebViewActivity)
  {
    mActivity = paramWebViewActivity;
  }
  
  public void freezeTitle()
  {
    mFreezeTitle = true;
  }
  
  public void onReceivedTitle(WebView paramWebView, String paramString)
  {
    super.onReceivedTitle(paramWebView, paramString);
    paramWebView.postDelayed(new WebViewActivity.EnhancedWebChromeClient.1(this, paramString), 500L);
  }
  
  public void setVirtualDisableLoadingByTitle(boolean paramBoolean)
  {
    mShowLoading = paramBoolean;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.WebViewActivity.EnhancedWebChromeClient
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */