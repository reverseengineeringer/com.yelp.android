package com.yelp.android.serializable;

import android.os.Parcel;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

final class al
  extends JsonParser.DualCreator<EventRsvp>
{
  public EventRsvp a(Parcel paramParcel)
  {
    EventRsvp localEventRsvp = new EventRsvp();
    localEventRsvp.readFromParcel(paramParcel);
    return localEventRsvp;
  }
  
  public EventRsvp a(JSONObject paramJSONObject)
  {
    EventRsvp localEventRsvp = new EventRsvp();
    localEventRsvp.readFromJson(paramJSONObject);
    return localEventRsvp;
  }
  
  public EventRsvp[] a(int paramInt)
  {
    return new EventRsvp[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.al
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */