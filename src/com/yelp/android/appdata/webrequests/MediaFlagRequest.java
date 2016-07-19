package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class MediaFlagRequest
  extends b<Void, Void, String>
{
  public MediaFlagRequest(FlaggableMedia paramFlaggableMedia, String paramString1, String paramString2, ApiRequest.b<String> paramb)
  {
    super(ApiRequest.RequestType.POST, apiPath, paramb);
    b(idParam, paramString1);
    b("message", paramString2);
  }
  
  public String a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return paramJSONObject.getString("success_title");
  }
  
  public static enum FlaggableMedia
  {
    BUSINESS_PHOTO("/business/photo/flag", "photo_id"),  BUSINESS_VIDEO("/business/video/flag", "video_id"),  USER_PHOTO("/user/profile/photo/flag", "user_photo_id");
    
    public String apiPath;
    public String idParam;
    
    private FlaggableMedia(String paramString1, String paramString2)
    {
      apiPath = paramString1;
      idParam = paramString2;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.MediaFlagRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */