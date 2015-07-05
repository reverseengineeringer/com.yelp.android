package com.yelp.android.ui.activities.support;

class WebViewActivity$EnhancedWebChromeClient$1
  implements Runnable
{
  WebViewActivity$EnhancedWebChromeClient$1(WebViewActivity.EnhancedWebChromeClient paramEnhancedWebChromeClient, String paramString) {}
  
  public void run()
  {
    if (WebViewActivity.EnhancedWebChromeClient.access$500(this$0)) {
      WebViewActivity.EnhancedWebChromeClient.access$600(this$0).disableLoading();
    }
    if (!WebViewActivity.EnhancedWebChromeClient.access$700(this$0)) {
      WebViewActivity.EnhancedWebChromeClient.access$600(this$0).setTitle(val$title);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.WebViewActivity.EnhancedWebChromeClient.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */