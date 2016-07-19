package com.yelp.android.appdata.webrequests;

import android.text.TextUtils;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.EventRsvp;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonParser.DualCreator;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class bo
  extends b<Void, Void, EventRsvp>
{
  public bo(Event paramEvent, ArrayList<String> paramArrayList, String paramString, ApiRequest.b<EventRsvp> paramb)
  {
    super(ApiRequest.RequestType.POST, "/event/rsvp/record", paramb);
    b("event_id", paramEvent.I());
    b("event_type", paramEvent.K().toString());
    if (!TextUtils.isEmpty(paramString)) {
      b("freeform_response", paramString);
    }
    b("guest_names", StringUtils.a(paramArrayList));
  }
  
  public EventRsvp a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (EventRsvp)EventRsvp.CREATOR.parse(paramJSONObject.getJSONObject("rsvp"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */