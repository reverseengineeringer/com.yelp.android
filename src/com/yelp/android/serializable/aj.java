package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class aj
  extends JsonParser.DualCreator<EventAttendees>
{
  public EventAttendees a(Parcel paramParcel)
  {
    EventAttendees localEventAttendees = new EventAttendees();
    localEventAttendees.readFromParcel(paramParcel);
    return localEventAttendees;
  }
  
  public EventAttendees a(JSONObject paramJSONObject)
  {
    EventAttendees localEventAttendees = new EventAttendees();
    localEventAttendees.readFromJson(paramJSONObject);
    return localEventAttendees;
  }
  
  public EventAttendees[] a(int paramInt)
  {
    return new EventAttendees[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.aj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */