package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Event;
import com.yelp.android.serializable.Event.EventType;
import com.yelp.android.serializable.User;
import com.yelp.android.util.StringUtils;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONObject;

public class bu
  extends g<Void, Void, List<User>>
{
  public bu(List<String> paramList, Event paramEvent, m<List<User>> paramm)
  {
    super(ApiRequest.RequestType.GET, "/event/attendees/users", paramm);
    addUrlParam("attendee_ids", StringUtils.a(paramList));
    addUrlParam("event_id", paramEvent.getId());
    addUrlParam("event_type", paramEvent.getType().toString());
  }
  
  public List<User> a(JSONObject paramJSONObject)
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("attendees"), User.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */