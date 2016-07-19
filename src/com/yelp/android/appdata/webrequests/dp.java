package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.ReservationLeaseResponse;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.services.f;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

public class dp
  extends b<Void, Void, ReservationLeaseResponse>
{
  private final Reservation a;
  
  public dp(Reservation paramReservation, YelpBusiness paramYelpBusiness, ApiRequest.b<ReservationLeaseResponse> paramb)
  {
    super(ApiRequest.RequestType.POST, "reservation/lock", paramb);
    b("size", paramReservation.d());
    b("timestamp", TimeUnit.SECONDS.convert(f.a(paramReservation.m()).getTime(), TimeUnit.MILLISECONDS));
    b("business_id", paramYelpBusiness.aD());
    b("reservation_provider", paramYelpBusiness.ae());
    a = paramReservation;
  }
  
  public ReservationLeaseResponse a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    a.a(paramJSONObject.getString("reservation_lease_id"));
    ReservationLeaseResponse localReservationLeaseResponse = new ReservationLeaseResponse();
    localReservationLeaseResponse.a(paramJSONObject);
    localReservationLeaseResponse.a(a);
    return localReservationLeaseResponse;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */