package com.yelp.android.ui.activities;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.gj;
import com.yelp.android.appdata.webrequests.m;

class di
  implements m<gj>
{
  di(ActivityRankedBusinesses paramActivityRankedBusinesses) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, gj paramgj)
  {
    ActivityRankedBusinesses.a(a, paramgj.a(), paramgj.b());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.populateError(paramYelpException);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.di
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */