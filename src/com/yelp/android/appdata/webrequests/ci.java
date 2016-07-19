package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.CheckInFeedback;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class ci
  extends b<Void, Void, List<CheckInFeedback>>
{
  public ci(YelpCheckIn paramYelpCheckIn, ApiRequest.b<List<CheckInFeedback>> paramb, int paramInt)
  {
    super(ApiRequest.RequestType.GET, "check_in/list_feedbacks", paramb);
    a("check_in_id", paramYelpCheckIn.z());
    a("offset", paramInt);
  }
  
  public List<CheckInFeedback> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("feedbacks"), CheckInFeedback.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */