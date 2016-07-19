package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class fc
  extends b<Void, Void, a>
{
  public fc(ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "/user/offers", paramb);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("deals"), YelpDeal.CREATOR), JsonUtil.parseJsonList(paramJSONObject.getJSONArray("check_in_offers"), Offer.CREATOR));
  }
  
  public static class a
  {
    final ArrayList<YelpDeal> a;
    final ArrayList<Offer> b;
    
    public a(ArrayList<YelpDeal> paramArrayList, ArrayList<Offer> paramArrayList1)
    {
      a = paramArrayList;
      b = paramArrayList1;
    }
    
    public ArrayList<YelpDeal> a()
    {
      return a;
    }
    
    public ArrayList<Offer> b()
    {
      return b;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */