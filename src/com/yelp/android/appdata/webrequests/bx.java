package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.SubscriptionStatus;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class bx
  extends g<Void, Void, Event>
{
  public bx(String paramString, Event.SubscriptionStatus paramSubscriptionStatus, m<Event> paramm)
  {
    super(ApiRequest.RequestType.POST, "event/update_subscription", paramm);
    addPostParam("event_id", paramString);
    addPostParam("subscription_status", paramSubscriptionStatus.getValueString());
  }
  
  public Event a(JSONObject paramJSONObject)
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
 * Qualified Name:     com.yelp.android.appdata.webrequests.bx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */