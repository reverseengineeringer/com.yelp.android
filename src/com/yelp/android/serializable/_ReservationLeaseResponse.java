package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _ReservationLeaseResponse
  implements Parcelable
{
  protected Reservation a;
  protected String b;
  protected String c;
  protected String d;
  
  public String a()
  {
    return d;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((Reservation)paramParcel.readParcelable(Reservation.class.getClassLoader()));
    b = ((String)paramParcel.readValue(String.class.getClassLoader()));
    c = ((String)paramParcel.readValue(String.class.getClassLoader()));
    d = ((String)paramParcel.readValue(String.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("last_name")) {
      b = paramJSONObject.optString("last_name");
    }
    if (!paramJSONObject.isNull("phone")) {
      c = paramJSONObject.optString("phone");
    }
    if (!paramJSONObject.isNull("legal_disclaimer")) {
      d = paramJSONObject.optString("legal_disclaimer");
    }
  }
  
  public String b()
  {
    return c;
  }
  
  public String c()
  {
    return b;
  }
  
  public Reservation d()
  {
    return a;
  }
  
  public int describeContents()
  {
    return 0;
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
    paramObject = (_ReservationLeaseResponse)paramObject;
    return new b().a(a, a).a(b, b).a(c, c).a(d, d).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a(c).a(d).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeValue(b);
    paramParcel.writeValue(c);
    paramParcel.writeValue(d);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ReservationLeaseResponse
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */