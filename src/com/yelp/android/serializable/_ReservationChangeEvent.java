package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.android.dc.b;
import com.yelp.android.dc.c;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

abstract class _ReservationChangeEvent
  implements Parcelable
{
  protected Reservation a;
  protected YelpBusiness b;
  
  public YelpBusiness a()
  {
    return b;
  }
  
  public void a(Parcel paramParcel)
  {
    a = ((Reservation)paramParcel.readParcelable(Reservation.class.getClassLoader()));
    b = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
  }
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    if (!paramJSONObject.isNull("reservation")) {
      a = ((Reservation)Reservation.CREATOR.parse(paramJSONObject.getJSONObject("reservation")));
    }
    if (!paramJSONObject.isNull("business")) {
      b = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
  }
  
  public Reservation b()
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
    paramObject = (_ReservationChangeEvent)paramObject;
    return new b().a(a, a).a(b, b).a();
  }
  
  public int hashCode()
  {
    return new c().a(a).a(b).a();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(a, 0);
    paramParcel.writeParcelable(b, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ReservationChangeEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */