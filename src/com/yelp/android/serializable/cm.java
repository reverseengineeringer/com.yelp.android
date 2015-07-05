package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class cm
  extends JsonParser.DualCreator<ReservationSearchAction>
{
  public ReservationSearchAction a(Parcel paramParcel)
  {
    ReservationSearchAction localReservationSearchAction = new ReservationSearchAction();
    localReservationSearchAction.readFromParcel(paramParcel);
    return localReservationSearchAction;
  }
  
  public ReservationSearchAction a(JSONObject paramJSONObject)
  {
    ReservationSearchAction localReservationSearchAction = new ReservationSearchAction();
    localReservationSearchAction.readFromJson(paramJSONObject);
    return localReservationSearchAction;
  }
  
  public ReservationSearchAction[] a(int paramInt)
  {
    return new ReservationSearchAction[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.cm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */