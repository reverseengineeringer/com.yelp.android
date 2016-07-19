package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.User;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class bn
  extends b<Void, Void, List<User>>
{
  public bn(List<String> paramList, Event paramEvent, ApiRequest.b<List<User>> paramb)
  {
    super(ApiRequest.RequestType.GET, "/event/attendees/users", paramb);
    a("attendee_ids", StringUtils.a(paramList));
    a("event_id", paramEvent.I());
    a("event_type", paramEvent.K().toString());
  }
  
  public List<User> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("attendees"), User.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */