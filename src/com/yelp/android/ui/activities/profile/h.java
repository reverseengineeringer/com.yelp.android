package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.gw;
import com.yelp.android.appdata.webrequests.m;

class h
  implements m<gw>
{
  h(ActivityUserProfile paramActivityUserProfile) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, gw paramgw)
  {
    ActivityUserProfile.a(a).h();
    a.hideLoadingDialog();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.onError(paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */