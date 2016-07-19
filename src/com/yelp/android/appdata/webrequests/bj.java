package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.EventRsvp;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class bj
  extends b<Void, Void, EventRsvp>
{
  public bj(Event paramEvent, ApiRequest.b<EventRsvp> paramb)
  {
    super(ApiRequest.RequestType.POST, "/event/rsvp/cancel", paramb);
    b("event_id", paramEvent.I());
    b("event_type", paramEvent.K().toString());
  }
  
  public EventRsvp a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (EventRsvp)EventRsvp.CREATOR.parse(paramJSONObject.getJSONObject("rsvp"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */