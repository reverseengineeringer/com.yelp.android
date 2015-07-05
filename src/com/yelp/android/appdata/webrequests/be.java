package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.android.serializable.ah;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class be
  extends g<Void, Void, Reservation>
{
  public be(Reservation paramReservation, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, YelpBusiness paramYelpBusiness, m<Reservation> paramm)
  {
    super(ApiRequest.RequestType.POST, "reservation/confirm", paramm);
    addPostParam("business_id", paramYelpBusiness.getId());
    addPostParam("reservation_provider", paramYelpBusiness.getReservationProviderString());
    addPostParam("size", paramReservation.getPartySize());
    addPostParam("timestamp", TimeUnit.SECONDS.convert(paramReservation.getDatestamp().getTime(), TimeUnit.MILLISECONDS));
    addPostParam("query_id", paramReservation.getQueryId());
    addPostParam("time_id", paramReservation.getTimeId());
    addPostParam("reservation_lease_id", paramReservation.getTransactionLockId());
    addPostParam("email", paramString3);
    addPostParam("phone", paramString4);
    addPostParam("first_name", paramString1);
    addPostParam("last_name", paramString2);
    addPostParam("special_instructions", paramString5);
  }
  
  public Reservation a(JSONObject paramJSONObject)
  {
    return (Reservation)Reservation.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.be
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */