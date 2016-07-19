package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import org.json.JSONException;
import org.json.JSONObject;

public class bp
  extends b<Void, Void, Event>
{
  public bp(String paramString, Event.EventType paramEventType, ApiRequest.b<Event> paramb)
  {
    super(ApiRequest.RequestType.GET, "event", paramb);
    a("event_id", paramString);
    a("event_type", paramEventType.toString());
  }
  
  public Event a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return Event.a(paramJSONObject.getJSONObject("event"), paramJSONObject.getJSONObject("user"), paramJSONObject.optJSONObject("business"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */