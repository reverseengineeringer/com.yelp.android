package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONObject;

public class bj
  extends g<Void, Void, YelpDeal>
{
  public String a;
  
  public bj(String paramString, m<YelpDeal> paramm)
  {
    super(ApiRequest.RequestType.GET, "deal", paramm);
    a = paramString;
    addUrlParam("deal_id", a);
  }
  
  public YelpDeal a(JSONObject paramJSONObject)
  {
    return (YelpDeal)YelpDeal.CREATOR.parse(paramJSONObject.getJSONObject("deal"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */