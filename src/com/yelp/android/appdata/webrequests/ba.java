package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.YelpDeal;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class ba
  extends b<Void, Void, YelpDeal>
{
  public String a;
  
  public ba(String paramString, ApiRequest.b<YelpDeal> paramb)
  {
    super(ApiRequest.RequestType.GET, "deal", paramb);
    a = paramString;
    a("deal_id", a);
  }
  
  public YelpDeal a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (YelpDeal)YelpDeal.CREATOR.parse(paramJSONObject.getJSONObject("deal"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ba
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */