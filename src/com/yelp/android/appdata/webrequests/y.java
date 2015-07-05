package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.PhotoFeedback;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONObject;

public class y
  extends g<Void, Void, List<PhotoFeedback>>
{
  public y(m<List<PhotoFeedback>> paramm, Photo paramPhoto)
  {
    super(ApiRequest.RequestType.GET, "business/photos/list_feedbacks", paramm);
    addUrlParam("photo_id", paramPhoto.getId());
  }
  
  public List<PhotoFeedback> a(JSONObject paramJSONObject)
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("feedbacks"), PhotoFeedback.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */