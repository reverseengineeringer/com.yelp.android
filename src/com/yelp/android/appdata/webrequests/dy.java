package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Offer;
import com.yelp.parcelgen.JsonUtil;
import org.json.JSONObject;

public class dy
  extends g<Void, Void, dz>
{
  public dy(int paramInt1, int paramInt2, boolean paramBoolean, m<dz> paramm)
  {
    super(ApiRequest.RequestType.GET, "check_ins/offers", paramm);
    addUrlParam("offset", paramInt1);
    addUrlParam("limit", paramInt2);
    addUrlParam("used", paramBoolean);
  }
  
  public dz a(JSONObject paramJSONObject)
  {
    return new dz(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("check_in_offers"), Offer.CREATOR), paramJSONObject.optInt("total"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */