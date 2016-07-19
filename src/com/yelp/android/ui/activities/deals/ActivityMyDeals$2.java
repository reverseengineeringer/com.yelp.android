package com.yelp.android.ui.activities.deals;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.fc.a;
import com.yelp.android.util.ErrorType;

class ActivityMyDeals$2
  implements ApiRequest.b<fc.a>
{
  ActivityMyDeals$2(ActivityMyDeals paramActivityMyDeals) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, fc.a parama)
  {
    ActivityMyDeals.a(a, parama.a(), parama.b());
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    a.populateError(ErrorType.getTypeFromException(paramYelpException));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.activities.deals.ActivityMyDeals.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */