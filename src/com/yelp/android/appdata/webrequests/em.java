package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.YelpBusiness;
import java.util.Date;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class em
  extends g<Void, Void, en>
{
  private final Reservation a;
  
  public em(Reservation paramReservation, YelpBusiness paramYelpBusiness, m<en> paramm)
  {
    super(ApiRequest.RequestType.POST, "reservation/lock", paramm);
    addPostParam("size", paramReservation.getPartySize());
    addPostParam("timestamp", TimeUnit.SECONDS.convert(paramReservation.getDatestamp().getTime(), TimeUnit.MILLISECONDS));
    addPostParam("business_id", paramYelpBusiness.getId());
    addPostParam("query_id", paramReservation.getQueryId());
    addPostParam("time_id", paramReservation.getSelectedTimeId());
    addPostParam("reservation_provider", paramYelpBusiness.getReservationProviderString());
    a = paramReservation;
  }
  
  public en a(JSONObject paramJSONObject)
  {
    a.setTransactionLockId(paramJSONObject.getString("reservation_lease_id"));
    String str1 = paramJSONObject.optString("last_name");
    String str2 = paramJSONObject.optString("phone");
    paramJSONObject = paramJSONObject.optString("legal_disclaimer");
    return new en(a, str1, str2, paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.em
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */