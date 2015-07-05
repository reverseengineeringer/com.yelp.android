package com.yelp.android.appdata;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.j;
import com.yelp.android.serializable.AlertsResponse;

class ac
  extends j<AlertsResponse>
{
  ac(ab paramab) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, AlertsResponse paramAlertsResponse)
  {
    ab.a(a, paramAlertsResponse.getUnreadMessageCount());
    ab.b(a, paramAlertsResponse.getCount());
  }
  
  public boolean a()
  {
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (!ab.a(a))
    {
      a.i();
      ab.a(a, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.ac
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */