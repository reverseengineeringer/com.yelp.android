package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.ah;
import org.json.JSONObject;

public class ee
  extends g<Void, Void, Offer>
{
  public ee(String paramString, m<Offer> paramm)
  {
    super(ApiRequest.RequestType.POST, "check_ins/offer/redeem", paramm);
    addPostParam("offer_id", paramString);
  }
  
  public Offer a(JSONObject paramJSONObject)
  {
    return (Offer)Offer.CREATOR.parse(paramJSONObject.getJSONObject("offer"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */