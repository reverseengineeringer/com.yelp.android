package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonUtil;
import java.util.Date;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _ReservationFilter
  implements Parcelable
{
  protected Date a;
  protected int b;
  
  protected _ReservationFilter() {}
  
  protected _ReservationFilter(Date paramDate, int paramInt)
  {
    this();
    a = paramDate;
    b = paramInt;
  }
  
  public JSONObject a()
    throws JSONException
  {
    JSONObject localJSONObject = new JSONObject();
    if (a != null) {
      localJSONObject.put("timestamp", a.getTime() / 1000L);
    }
    localJSONObject.put("party_size", b);
    return localJSONObject;
  }
  
  public void a(Parcel paramParcel)
  {
    long l = paramParcel.readLong();
    if (l != -2147483648L) {
      a = new Date(l);
    }
    b = paramParcel.readInt();
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("timestamp")) {
      a = JsonUtil.parseTimestamp(paramJSONObject, "timestamp");
    }
    b = paramJSONObject.optInt("party_size");
  }
  
  public int d()
  {
    return b;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Date e()
  {
    return a;
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == null) {}
    do
    {
      return false;
      if (paramObject == this) {
        return true;
      }
    } while (paramObject.getClass() != getClass());
    paramObject = (_ReservationFilter)paramObject;
    return new b().a(a, a).a(b, b).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (a == null) {}
    for (long l = -2147483648L;; l = a.getTime())
    {
      paramParcel.writeLong(l);
      paramParcel.writeInt(b);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ReservationFilter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */