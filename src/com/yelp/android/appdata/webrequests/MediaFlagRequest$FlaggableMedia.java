package com.yelp.android.appdata.webrequests;

public enum MediaFlagRequest$FlaggableMedia
{
  BUSINESS_PHOTO("/business/photo/flag", "photo_id"),  BUSINESS_VIDEO("/business/video/flag", "video_id"),  USER_PHOTO("/user/profile/photo/flag", "user_photo_id");
  
  public String apiPath;
  public String idParam;
  
  private MediaFlagRequest$FlaggableMedia(String paramString1, String paramString2)
  {
    apiPath = paramString1;
    idParam = paramString2;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.MediaFlagRequest.FlaggableMedia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */