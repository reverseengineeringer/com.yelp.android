package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Badge;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class o
  extends b<String, Void, Badge>
{
  public o(String paramString, ApiRequest.b<Badge> paramb)
  {
    super(ApiRequest.RequestType.GET, "/badge", paramb);
    a("badge_id", paramString);
  }
  
  public Badge a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (Badge)Badge.CREATOR.parse(paramJSONObject.getJSONObject("badge"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */