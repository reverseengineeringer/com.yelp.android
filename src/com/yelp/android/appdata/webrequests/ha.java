package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.h;

public class ha
  extends h
{
  public ha(String paramString1, String paramString2, String paramString3)
  {
    super("/business/video/mark_upload_complete", null);
    addPostParam("biz_id", paramString1);
    addPostParam("video_id", paramString2);
    addPostParam("caption", paramString3);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ha
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */