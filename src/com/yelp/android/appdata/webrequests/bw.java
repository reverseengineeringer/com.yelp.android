package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import org.json.JSONObject;

public class bw
  extends g<Void, Void, Event>
{
  public bw(String paramString, Event.EventType paramEventType, m<Event> paramm)
  {
    super(ApiRequest.RequestType.GET, "event/", paramm);
    addUrlParam("event_id", paramString);
    addUrlParam("event_type", paramEventType.toString());
  }
  
  public Event a(JSONObject paramJSONObject)
  {
    return Event.eventFromJSONObject(paramJSONObject.getJSONObject("event"), paramJSONObject.getJSONObject("user"), paramJSONObject.optJSONObject("business"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */