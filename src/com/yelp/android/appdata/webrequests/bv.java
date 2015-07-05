package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.av.g;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.EventRsvp;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import org.json.JSONObject;

public class bv
  extends g<Void, Void, EventRsvp>
{
  public bv(Event paramEvent, ArrayList<String> paramArrayList, String paramString, m<EventRsvp> paramm)
  {
    super(ApiRequest.RequestType.POST, "/event/rsvp/record", paramm);
    addPostParam("event_id", paramEvent.getId());
    addPostParam("event_type", paramEvent.getType().toString());
    if (!TextUtils.isEmpty(paramString)) {
      addPostParam("freeform_response", paramString);
    }
    addPostParam("guest_names", StringUtils.a(paramArrayList));
  }
  
  public EventRsvp a(JSONObject paramJSONObject)
  {
    return (EventRsvp)EventRsvp.CREATOR.parse(paramJSONObject.getJSONObject("rsvp"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */