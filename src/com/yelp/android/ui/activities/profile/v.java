package com.yelp.android.ui.activities.profile;

import android.content.Intent;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.gw;
import com.yelp.android.appdata.webrequests.m;

class v
  implements m<gw>
{
  v(UserMediaGrid paramUserMediaGrid) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, gw paramgw)
  {
    UserMediaGrid.a(a, paramgw.a(), paramgw.b());
    a.hideLoadingDialog();
    paramApiRequest = ActivityUserProfile.a();
    paramApiRequest.setPackage(a.getPackageName());
    a.sendBroadcast(paramApiRequest);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    a.onError(paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */