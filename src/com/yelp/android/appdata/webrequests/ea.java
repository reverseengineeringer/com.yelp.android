package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.YelpBusinessReview;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class ea
  extends b<Void, Void, a>
{
  public ea(String paramString1, String paramString2, int paramInt1, int paramInt2, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "reviews/search", paramb);
    a("business_id", paramString1);
    a("term", paramString2);
    a("offset", paramInt1);
    a("limit", paramInt2);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("reviews"), YelpBusinessReview.CREATOR), paramJSONObject.getInt("total"));
  }
  
  public static class a
  {
    public final List<YelpBusinessReview> a;
    public final int b;
    
    public a(List<YelpBusinessReview> paramList, int paramInt)
    {
      a = paramList;
      b = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ea
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */