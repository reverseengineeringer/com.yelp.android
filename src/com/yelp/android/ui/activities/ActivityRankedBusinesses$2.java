package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fb.a;

class ActivityRankedBusinesses$2
  implements ApiRequest.b<fb.a>
{
  ActivityRankedBusinesses$2(ActivityRankedBusinesses paramActivityRankedBusinesses) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, fb.a parama)
  {
    ActivityRankedBusinesses.a(a, parama.a(), parama.b());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.ActivityRankedBusinesses.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */