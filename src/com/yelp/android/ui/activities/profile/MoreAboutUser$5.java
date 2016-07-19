package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fk.a;

class MoreAboutUser$5
  implements ApiRequest.b<fk.a>
{
  MoreAboutUser$5(MoreAboutUser paramMoreAboutUser) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, fk.a parama)
  {
    a.hideLoadingDialog();
    MoreAboutUser.c(a);
    paramApiRequest = ActivityUserProfile.a();
    a.sendBroadcast(paramApiRequest);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.onError(paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.MoreAboutUser.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */