package com.yelp.android.ui.activities.mediagrid;

import android.content.Intent;
import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fk.a;
import com.yelp.android.ui.activities.profile.ActivityUserProfile;
import com.yelp.android.ui.util.as;

class ActivityUserMediaGrid$1
  implements ApiRequest.b<fk.a>
{
  ActivityUserMediaGrid$1(ActivityUserMediaGrid paramActivityUserMediaGrid) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, fk.a parama)
  {
    if (parama.b()) {
      ActivityUserMediaGrid.a(a).a(parama.a());
    }
    for (;;)
    {
      a.hideLoadingDialog();
      paramApiRequest = ActivityUserProfile.a();
      paramApiRequest.setPackage(a.getPackageName());
      a.sendBroadcast(paramApiRequest);
      return;
      ActivityUserMediaGrid.a(a).b(parama.a());
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.hideLoadingDialog();
    a.disableLoading();
    as.a(2131165866, 1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.mediagrid.ActivityUserMediaGrid.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */