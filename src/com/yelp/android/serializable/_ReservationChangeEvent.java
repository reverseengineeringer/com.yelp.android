package com.yelp.android.serializable;

import android.os.Parcel;
import android.os.Parcelable;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

abstract class _ReservationChangeEvent
  implements Parcelable
{
  protected YelpBusiness mBusiness;
  protected Reservation mReservation;
  
  protected _ReservationChangeEvent() {}
  
  protected _ReservationChangeEvent(Reservation paramReservation, YelpBusiness paramYelpBusiness)
  {
    this();
    mReservation = paramReservation;
    mBusiness = paramYelpBusiness;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public YelpBusiness getBusiness()
  {
    return mBusiness;
  }
  
  public Reservation getReservation()
  {
    return mReservation;
  }
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    if (!paramJSONObject.isNull("reservation")) {
      mReservation = ((Reservation)Reservation.CREATOR.parse(paramJSONObject.getJSONObject("reservation")));
    }
    if (!paramJSONObject.isNull("business")) {
      mBusiness = ((YelpBusiness)YelpBusiness.CREATOR.parse(paramJSONObject.getJSONObject("business")));
    }
  }
  
  public void readFromParcel(Parcel paramParcel)
  {
    mReservation = ((Reservation)paramParcel.readParcelable(Reservation.class.getClassLoader()));
    mBusiness = ((YelpBusiness)paramParcel.readParcelable(YelpBusiness.class.getClassLoader()));
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    paramParcel.writeParcelable(mReservation, 0);
    paramParcel.writeParcelable(mBusiness, 0);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable._ReservationChangeEvent
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */