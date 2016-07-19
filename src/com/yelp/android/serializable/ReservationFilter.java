package com.yelp.android.serializable;

import com.yelp.android.services.f;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

public class ReservationFilter
  extends _ReservationFilter
{
  public static final JsonParser.DualCreator<ReservationFilter> CREATOR = new ReservationFilter.1();
  
  public ReservationFilter() {}
  
  public ReservationFilter(int paramInt, Date paramDate)
  {
    super(paramDate, paramInt);
  }
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = super.a();
    if ((!localJSONObject.isNull("timestamp")) && (a != null)) {
      localJSONObject.put("timestamp", c().e().getTime() / 1000L);
    }
    return localJSONObject;
  }
  
  public void a(Date paramDate)
  {
    a = paramDate;
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    if (a != null) {
      a = f.b(a);
    }
  }
  
  public boolean b()
  {
    return (b > 0) && (a != null);
  }
  
  public ReservationFilter c()
  {
    Date localDate = f.a(f.a(e(), 15));
    return new ReservationFilter(b, localDate);
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (paramObject == null) {
        return false;
      }
      if (!(paramObject instanceof ReservationFilter)) {
        return false;
      }
      paramObject = (ReservationFilter)paramObject;
      if (d() != ((ReservationFilter)paramObject).d()) {
        return false;
      }
    } while (e().equals(((ReservationFilter)paramObject).e()));
    return false;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ReservationFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */