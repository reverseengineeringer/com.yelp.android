package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.a;
import com.yelp.android.services.f;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.json.JSONException;
import org.json.JSONObject;

public class au
  extends b<Void, Void, Reservation>
{
  public au(Reservation paramReservation, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, YelpBusiness paramYelpBusiness, ApiRequest.b<Reservation> paramb)
  {
    super(ApiRequest.RequestType.POST, "reservation/confirm", paramb);
    b("business_id", paramYelpBusiness.aD());
    b("reservation_provider", paramYelpBusiness.ae());
    b("size", paramReservation.d());
    b("timestamp", TimeUnit.SECONDS.convert(f.a(paramReservation.m()).getTime(), TimeUnit.MILLISECONDS));
    b("reservation_lease_id", paramReservation.f());
    b("email", paramString3);
    b("phone", paramString4);
    b("first_name", paramString1);
    b("last_name", paramString2);
    b("special_instructions", paramString5);
  }
  
  public Reservation a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (Reservation)Reservation.CREATOR.parse(paramJSONObject.getJSONObject("reservation"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.au
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */