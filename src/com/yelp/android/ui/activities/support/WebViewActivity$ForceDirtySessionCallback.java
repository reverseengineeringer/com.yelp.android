package com.yelp.android.ui.activities.support;

import android.content.Intent;
import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.c.a;

class WebViewActivity$ForceDirtySessionCallback
  implements c.a
{
  Intent mIntent;
  
  public WebViewActivity$ForceDirtySessionCallback(WebViewActivity paramWebViewActivity, Intent paramIntent)
  {
    mIntent = paramIntent;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    AppData.a("WEBVIEW", "Force dirty session request failed.", new Object[0]);
    this$0.startActivity(mIntent);
    this$0.disableLoading();
  }
  
  public void onSuccess(ApiRequest<?, ?, ?> paramApiRequest, Void paramVoid)
  {
    AppData.a("WEBVIEW", "Force dirty session request successfully sent.", new Object[0]);
    this$0.startActivity(mIntent);
    this$0.disableLoading();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.support.WebViewActivity.ForceDirtySessionCallback
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */