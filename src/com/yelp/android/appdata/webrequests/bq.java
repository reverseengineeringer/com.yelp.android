package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.SubscriptionStatus;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class bq
  extends b<Void, Void, Event>
{
  public bq(String paramString, Event.SubscriptionStatus paramSubscriptionStatus, ApiRequest.b<Event> paramb)
  {
    super(ApiRequest.RequestType.POST, "event/update_subscription", paramb);
    b("event_id", paramString);
    b("subscription_status", paramSubscriptionStatus.getValueString());
  }
  
  public Event a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    if (paramJSONObject.optJSONObject("event") == null) {
      return null;
    }
    return (Event)Event.CREATOR.parse(paramJSONObject.getJSONObject("event"));
  }
  
  public String toString()
  {
    return "EventSubscriptionRequest";
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */