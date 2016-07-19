package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fg.a;
import com.yelp.android.ui.util.ap;

class ActivityUserFollowing$1
  implements ApiRequest.b<fg.a>
{
  ActivityUserFollowing$1(ActivityUserFollowing paramActivityUserFollowing) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, fg.a parama)
  {
    ActivityUserFollowing.a(a, false);
    a.disableLoading();
    ActivityUserFollowing.a(a).a(a, true);
    ActivityUserFollowing.a(a, ActivityUserFollowing.a(a).getCount());
    ActivityUserFollowing.b(a, b);
    if (ActivityUserFollowing.b(a) == ActivityUserFollowing.c(a)) {
      a.a();
    }
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    ActivityUserFollowing.a(a, false);
    a.disableLoading();
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityUserFollowing.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */