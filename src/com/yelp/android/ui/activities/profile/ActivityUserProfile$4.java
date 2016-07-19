package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fk.a;

class ActivityUserProfile$4
  implements ApiRequest.b<fk.a>
{
  ActivityUserProfile$4(ActivityUserProfile paramActivityUserProfile) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, fk.a parama)
  {
    ActivityUserProfile.a(a).i();
    a.hideLoadingDialog();
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.onError(paramApiRequest, paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserProfile.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */