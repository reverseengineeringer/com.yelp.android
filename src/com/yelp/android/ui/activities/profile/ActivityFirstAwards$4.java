package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.YelpBusinessReview;
import java.util.List;

class ActivityFirstAwards$4
  implements ApiRequest.b<List<YelpBusinessReview>>
{
  ActivityFirstAwards$4(ActivityFirstAwards paramActivityFirstAwards) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<YelpBusinessReview> paramList)
  {
    ActivityFirstAwards.b(a, paramList.size());
    ActivityFirstAwards.a(a, paramList);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityFirstAwards.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */