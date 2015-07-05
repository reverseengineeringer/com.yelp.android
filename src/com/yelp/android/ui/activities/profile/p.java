package com.yelp.android.ui.activities.profile;

import android.content.Intent;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.gw;
import com.yelp.android.appdata.webrequests.m;

class p
  implements m<gw>
{
  p(MoreAboutUser paramMoreAboutUser) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, gw paramgw)
  {
    a.hideLoadingDialog();
    MoreAboutUser.c(a);
    paramApiRequest = ActivityUserProfile.a();
    paramApiRequest.setPackage(a.getPackageName());
    a.sendBroadcast(paramApiRequest);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.onError(paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */