package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class EventSection
  extends _EventSection
{
  public static final JsonParser.DualCreator<EventSection> CREATOR = new am();
  
  public void readFromJson(JSONObject paramJSONObject)
  {
    super.readFromJson(paramJSONObject);
    mEvents = Event.buildEventsFromJSONResponse(paramJSONObject.getJSONArray("events"), paramJSONObject.getJSONArray("users"), paramJSONObject.getJSONArray("businesses"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.EventSection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */