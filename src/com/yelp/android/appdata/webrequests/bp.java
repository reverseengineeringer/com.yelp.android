package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.EventAttendees;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class bp
  extends g<Void, Void, EventAttendees>
{
  public bp(Event paramEvent, m<EventAttendees> paramm)
  {
    super(ApiRequest.RequestType.GET, "/event/attendees", paramm);
    addUrlParam("event_id", paramEvent.getId());
    addUrlParam("event_type", paramEvent.getType().toString());
  }
  
  public EventAttendees a(JSONObject paramJSONObject)
  {
    return (EventAttendees)EventAttendees.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */