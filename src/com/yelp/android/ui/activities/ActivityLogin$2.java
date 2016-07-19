package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;

class ActivityLogin$2
  implements ApiRequest.b<String>
{
  ActivityLogin$2(ActivityLogin paramActivityLogin) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, String paramString)
  {
    a.hideLoadingDialog();
    a.showInfoDialog(a.getString(2131166090), a.getString(2131166331));
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    a.showInfoDialog(a.getString(2131166090), a.getString(2131166331));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityLogin.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */