package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Video;
import com.yelp.android.serializable.VideoFeedback;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONObject;

public class ai
  extends g<Void, Void, List<VideoFeedback>>
{
  public ai(m<List<VideoFeedback>> paramm, Video paramVideo)
  {
    super(ApiRequest.RequestType.GET, "/business/videos/list_feedbacks", paramm);
    addUrlParam("video_id", paramVideo.getId());
    addUrlParam("video_source", paramVideo.getVideoSource());
  }
  
  public List<VideoFeedback> a(JSONObject paramJSONObject)
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("feedbacks"), VideoFeedback.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ai
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */