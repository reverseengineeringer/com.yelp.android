package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.EventAttendees;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class bi
  extends b<Void, Void, EventAttendees>
{
  public bi(Event paramEvent, ApiRequest.b<EventAttendees> paramb)
  {
    super(ApiRequest.RequestType.GET, "/event/attendees", paramb);
    a("event_id", paramEvent.I());
    a("event_type", paramEvent.K().toString());
  }
  
  public EventAttendees a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (EventAttendees)EventAttendees.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */