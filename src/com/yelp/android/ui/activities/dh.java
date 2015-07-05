package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.gt;
import com.yelp.android.appdata.webrequests.m;

class dh
  implements m<gt>
{
  dh(ActivityRankedBusinesses paramActivityRankedBusinesses) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, gt paramgt)
  {
    ActivityRankedBusinesses.a(a, paramgt.a(), paramgt.b());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */