package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Badge;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONObject;

public class gh
  extends g<Void, Void, ArrayList<Badge>>
{
  public gh(String paramString, int paramInt1, int paramInt2, m<ArrayList<Badge>> paramm)
  {
    super(ApiRequest.RequestType.GET, "user/badges", paramm);
    addUrlParam("user_id", paramString);
    addUrlParam("offset", paramInt1);
    addUrlParam("limit", paramInt2);
  }
  
  public ArrayList<Badge> a(JSONObject paramJSONObject)
  {
    return JsonUtil.parseJsonList(paramJSONObject.getJSONArray("badges"), Badge.CREATOR);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */