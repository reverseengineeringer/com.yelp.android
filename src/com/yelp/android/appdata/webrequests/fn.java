package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;
import com.yelp.android.serializable.Video;

public class fn
  extends h
{
  public fn(Video paramVideo, boolean paramBoolean)
  {
    super("/business/video/save_feedback", null);
    addPostParam("video_id", paramVideo.getId());
    addPostParam("video_source", paramVideo.getVideoSource());
    if (paramBoolean) {}
    for (paramVideo = "POSITIVE";; paramVideo = "NONE")
    {
      addPostParam("feedback", paramVideo);
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */