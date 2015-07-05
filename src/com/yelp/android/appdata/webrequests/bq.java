package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.EventRsvp;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class bq
  extends g<Void, Void, EventRsvp>
{
  public bq(Event paramEvent, m<EventRsvp> paramm)
  {
    super(ApiRequest.RequestType.POST, "/event/rsvp/cancel", paramm);
    addPostParam("event_id", paramEvent.getId());
    addPostParam("event_type", paramEvent.getType().toString());
  }
  
  public EventRsvp a(JSONObject paramJSONObject)
  {
    return (EventRsvp)EventRsvp.CREATOR.parse(paramJSONObject.getJSONObject("rsvp"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */