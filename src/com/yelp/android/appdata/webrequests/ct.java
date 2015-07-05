package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.CheckInFeedback;
import com.yelp.android.serializable.YelpCheckIn;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONObject;

public class ct
  extends g<Void, Void, List<CheckInFeedback>>
{
  public ct(YelpCheckIn paramYelpCheckIn, m<List<CheckInFeedback>> paramm, int paramInt)
  {
    super(ApiRequest.RequestType.GET, "check_in/list_feedbacks", paramm);
    addUrlParam("check_in_id", paramYelpCheckIn.getId());
    addUrlParam("offset", paramInt);
  }
  
  public List<CheckInFeedback> a(JSONObject paramJSONObject)
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("feedbacks"), CheckInFeedback.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */