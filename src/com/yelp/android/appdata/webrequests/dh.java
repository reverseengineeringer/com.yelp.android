package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Offer;
import com.yelp.android.serializable.a;
import org.json.JSONException;
import org.json.JSONObject;

public class dh
  extends b<Void, Void, Offer>
{
  public dh(String paramString, ApiRequest.b<Offer> paramb)
  {
    super(ApiRequest.RequestType.POST, "check_ins/offer/redeem", paramb);
    b("offer_id", paramString);
  }
  
  public Offer a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (Offer)Offer.CREATOR.parse(paramJSONObject.getJSONObject("offer"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */