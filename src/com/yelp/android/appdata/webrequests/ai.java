package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Video;
import com.yelp.android.serializable.VideoFeedback;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class ai
  extends b<Void, Void, List<VideoFeedback>>
{
  public ai(ApiRequest.b<List<VideoFeedback>> paramb, Video paramVideo)
  {
    super(ApiRequest.RequestType.GET, "/business/videos/list_feedbacks", paramb);
    a("video_id", paramVideo.a());
    a("video_source", paramVideo.p());
  }
  
  public List<VideoFeedback> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("feedbacks"), VideoFeedback.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */