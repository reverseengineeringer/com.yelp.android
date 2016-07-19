package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Offer;
import com.yelp.parcelgen.JsonUtil;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class db
  extends b<Void, Void, a>
{
  public db(int paramInt1, int paramInt2, boolean paramBoolean, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "check_ins/offers", paramb);
    a("offset", paramInt1);
    a("limit", paramInt2);
    a("used", paramBoolean);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("check_in_offers"), Offer.CREATOR), paramJSONObject.optInt("total"));
  }
  
  public static class a
  {
    List<Offer> a;
    int b;
    
    public a(List<Offer> paramList, int paramInt)
    {
      a = paramList;
      b = paramInt;
    }
    
    public List<Offer> a()
    {
      return a;
    }
    
    public int b()
    {
      return b;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.db
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */