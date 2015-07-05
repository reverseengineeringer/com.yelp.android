package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.parcelgen.JsonUtil;
import org.json.JSONObject;

public class gl
  extends g<Void, Void, gm>
{
  public gl(m<gm> paramm)
  {
    super(ApiRequest.RequestType.GET, "/user/offers", paramm);
  }
  
  public gm a(JSONObject paramJSONObject)
  {
    return new gm(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("deals"), YelpDeal.CREATOR), JsonUtil.parseJsonList(paramJSONObject.getJSONArray("check_in_offers"), Offer.CREATOR));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */