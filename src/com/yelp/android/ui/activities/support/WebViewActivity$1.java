package com.yelp.android.ui.activities.support;

import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;

class WebViewActivity$1
  implements DialogInterface.OnClickListener
{
  WebViewActivity$1(WebViewActivity paramWebViewActivity) {}
  
  public void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    this$0.sendCancelIrisIfNeeded(false);
    this$0.setResult(0, this$0.getIntentForLeavingWebView());
    this$0.finish();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.WebViewActivity.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */