package com.yelp.android.appdata;

import com.yelp.android.appdata.webrequests.ApiRequest;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.k.b;
import com.yelp.android.serializable.AlertsResponse;

class j$1
  extends k.b<AlertsResponse>
{
  j$1(j paramj) {}
  
  public void a(ApiRequest<?, ?, ?> paramApiRequest, AlertsResponse paramAlertsResponse)
  {
    j.a(a, paramAlertsResponse.a());
    j.b(a, paramAlertsResponse.b());
  }
  
  public boolean a()
  {
    return false;
  }
  
  public void onError(ApiRequest<?, ?, ?> paramApiRequest, YelpException paramYelpException)
  {
    if (!j.a(a))
    {
      a.i();
      j.a(a, true);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.j.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */