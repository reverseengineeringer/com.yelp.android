package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class ai
  extends JsonParser.DualCreator<Event>
{
  public Event a(Parcel paramParcel)
  {
    Event localEvent = new Event();
    localEvent.readFromParcel(paramParcel);
    return localEvent;
  }
  
  public Event a(JSONObject paramJSONObject)
  {
    Event localEvent = new Event();
    localEvent.readFromJson(paramJSONObject);
    return localEvent;
  }
  
  public Event[] a(int paramInt)
  {
    return new Event[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */