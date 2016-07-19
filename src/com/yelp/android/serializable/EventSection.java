package com.yelp.android.serializable;

import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class EventSection
  extends _EventSection
{
  public static final JsonParser.DualCreator<EventSection> CREATOR = new EventSection.1();
  
  public void a(JSONObject paramJSONObject)
    throws JSONException
  {
    super.a(paramJSONObject);
    a = Event.a(paramJSONObject.getJSONArray("events"), paramJSONObject.getJSONArray("users"), paramJSONObject.getJSONArray("businesses"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.serializable.EventSection
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */