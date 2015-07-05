package com.yelp.android.ui.activities.deals;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.gm;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.util.ErrorType;

class p
  implements m<gm>
{
  p(ActivityMyDeals paramActivityMyDeals) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, gm paramgm)
  {
    ActivityMyDeals.a(a, paramgm.a(), paramgm.b());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.populateError(ErrorType.getTypeFromException(paramYelpException));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */