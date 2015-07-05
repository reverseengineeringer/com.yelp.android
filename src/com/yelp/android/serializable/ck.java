package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class ck
  extends JsonParser.DualCreator<ReservationChangeEvent>
{
  public ReservationChangeEvent a(Parcel paramParcel)
  {
    ReservationChangeEvent localReservationChangeEvent = new ReservationChangeEvent();
    localReservationChangeEvent.readFromParcel(paramParcel);
    return localReservationChangeEvent;
  }
  
  public ReservationChangeEvent a(JSONObject paramJSONObject)
  {
    ReservationChangeEvent localReservationChangeEvent = new ReservationChangeEvent();
    localReservationChangeEvent.readFromJson(paramJSONObject);
    return localReservationChangeEvent;
  }
  
  public ReservationChangeEvent[] a(int paramInt)
  {
    return new ReservationChangeEvent[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ck
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */