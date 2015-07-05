package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Photo;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.l;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.apache.http.HttpEntity;
import org.json.JSONObject;

public class aa
  extends g<Void, Void, Photo>
{
  private final String a;
  
  public aa(String paramString1, String paramString2, String paramString3)
  {
    super(ApiRequest.RequestType.POST, "business/add_image", null);
    a = paramString3;
    addUrlParam("biz_id", paramString1);
    if (!StringUtils.e(paramString2)) {
      addUrlParam("caption", paramString2);
    }
  }
  
  public Photo a(JSONObject paramJSONObject)
  {
    return (Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo"));
  }
  
  protected HttpEntity getPostEntity()
  {
    return l.a("image", a, getPostParameters());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.aa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */