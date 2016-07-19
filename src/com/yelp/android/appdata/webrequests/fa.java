package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Badge;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class fa
  extends b<Void, Void, List<Badge>>
{
  public fa(String paramString)
  {
    super(ApiRequest.RequestType.GET, "user/badges", null);
    a("user_id", paramString);
    a("offset", 0);
    a("limit", 80);
  }
  
  public List<Badge> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("badges"), Badge.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fa
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */