package com.yelp.android.ui.activities.profile;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.serializable.Tip;
import java.util.List;

class ActivityFirstAwards$3
  implements ApiRequest.b<List<Tip>>
{
  ActivityFirstAwards$3(ActivityFirstAwards paramActivityFirstAwards) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, List<Tip> paramList)
  {
    ActivityFirstAwards.a(a, paramList.size());
    ActivityFirstAwards.a(a, paramList);
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.profile.ActivityFirstAwards.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */