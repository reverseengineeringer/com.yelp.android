package com.yelp.android.ui.activities;

import com.yelp.android.appdata.AppData;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.ui.util.as;

class ActivityConfirmAccount$3
  implements ApiRequest.b<String>
{
  ActivityConfirmAccount$3(ActivityConfirmAccount paramActivityConfirmAccount) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, String paramString)
  {
    a.hideLoadingDialog();
    ActivityConfirmAccount.a(a, paramString);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    as.a(AppData.b().getString(2131166740), 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityConfirmAccount.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */