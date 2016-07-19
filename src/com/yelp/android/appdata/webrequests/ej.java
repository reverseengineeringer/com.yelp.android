package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.c;
import com.yelp.android.serializable.Video;

public class ej
  extends c
{
  private final String a;
  private final boolean g;
  
  public ej(Video paramVideo, boolean paramBoolean)
  {
    super("/business/video/save_feedback", null);
    b("video_id", paramVideo.a());
    b("video_source", paramVideo.p());
    if (paramBoolean) {}
    for (String str = "POSITIVE";; str = "NONE")
    {
      b("feedback", str);
      a = paramVideo.a();
      g = paramBoolean;
      return;
    }
  }
  
  public String b()
  {
    return a;
  }
  
  public boolean d()
  {
    return g;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ej
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */