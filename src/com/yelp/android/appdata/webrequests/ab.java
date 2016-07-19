package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Photo;
import com.yelp.android.serializable.PhotoFeedback;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class ab
  extends b<Void, Void, List<PhotoFeedback>>
{
  public ab(ApiRequest.b<List<PhotoFeedback>> paramb, Photo paramPhoto)
  {
    super(ApiRequest.RequestType.GET, "business/photos/list_feedbacks", paramb);
    a("photo_id", paramPhoto.a());
  }
  
  public List<PhotoFeedback> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("feedbacks"), PhotoFeedback.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ab
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */