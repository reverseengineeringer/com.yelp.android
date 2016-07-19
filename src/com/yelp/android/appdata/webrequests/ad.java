package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Photo;
import com.yelp.android.util.StringUtils;
import com.yelp.android.util.e;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.apache.http.HttpEntity;
import org.json.JSONException;
import org.json.JSONObject;

public class ad
  extends b<Void, Void, Photo>
{
  private final String a;
  
  public ad(String paramString1, String paramString2, String paramString3)
  {
    super(ApiRequest.RequestType.POST, "business/add_image", null);
    a = paramString3;
    b("biz_id", paramString1);
    if (!StringUtils.d(paramString2)) {
      b("caption", paramString2);
    }
  }
  
  public Photo a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (Photo)Photo.CREATOR.parse(paramJSONObject.getJSONObject("photo"));
  }
  
  protected HttpEntity a()
  {
    return e.a("image", a, t());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ad
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */