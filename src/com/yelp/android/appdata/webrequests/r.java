package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Badge;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class r
  extends g<String, Void, Badge>
{
  public r(String paramString, m<Badge> paramm)
  {
    super(ApiRequest.RequestType.GET, "/badge", paramm);
    addUrlParam("badge_id", paramString);
  }
  
  public Badge a(JSONObject paramJSONObject)
  {
    return (Badge)Badge.CREATOR.parse(paramJSONObject.getJSONObject("badge"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */