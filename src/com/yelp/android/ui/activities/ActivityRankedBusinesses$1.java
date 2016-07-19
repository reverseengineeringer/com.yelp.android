package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fi.a;

class ActivityRankedBusinesses$1
  implements ApiRequest.b<fi.a>
{
  ActivityRankedBusinesses$1(ActivityRankedBusinesses paramActivityRankedBusinesses) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, fi.a parama)
  {
    ActivityRankedBusinesses.a(a, parama.a(), parama.b());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRankedBusinesses.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */