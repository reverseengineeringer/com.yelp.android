package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.parcelgen.JsonUtil;
import org.json.JSONObject;

public class fc
  extends g<String, Void, fd>
{
  public fc(String paramString1, String paramString2, int paramInt1, int paramInt2, m<fd> paramm)
  {
    super(ApiRequest.RequestType.GET, "reviews/search", paramm);
    addUrlParam("business_id", paramString1);
    addUrlParam("term", paramString2);
    addUrlParam("offset", paramInt1);
    addUrlParam("limit", paramInt2);
  }
  
  public fd a(JSONObject paramJSONObject)
  {
    return new fd(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("reviews"), YelpBusinessReview.CREATOR), paramJSONObject.getInt("total"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */