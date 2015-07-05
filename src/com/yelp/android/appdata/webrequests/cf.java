package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Reservation;
import com.yelp.android.serializable.YelpBusiness;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collections;
import java.util.Date;
import java.util.Iterator;
import java.util.concurrent.TimeUnit;
import org.json.JSONObject;

public class cf
  extends g<Void, Void, cg>
{
  private final int a;
  private final Date b;
  
  public cf(m<cg> paramm, YelpBusiness paramYelpBusiness, Calendar paramCalendar, int paramInt)
  {
    super(ApiRequest.RequestType.GET, "reservation/search", paramm);
    a = paramInt;
    b = paramCalendar.getTime();
    addUrlParam("timestamp", TimeUnit.SECONDS.convert(paramCalendar.getTimeInMillis(), TimeUnit.MILLISECONDS));
    addUrlParam("business_id", paramYelpBusiness.getId());
    addUrlParam("size", a);
    addUrlParam("reservation_provider", paramYelpBusiness.getReservationProviderString());
  }
  
  public cg a(JSONObject paramJSONObject)
  {
    String str = paramJSONObject.getString("query_id");
    paramJSONObject = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("times"), Reservation.CREATOR);
    Iterator localIterator = paramJSONObject.iterator();
    while (localIterator.hasNext())
    {
      Reservation localReservation = (Reservation)localIterator.next();
      localReservation.setQueryId(str);
      localReservation.setPartySize(a);
    }
    Collections.sort(paramJSONObject);
    return new cg(b, paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */