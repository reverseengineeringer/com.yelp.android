package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.ContinueLastOrderInfo;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class aw
  extends b<Void, Void, ContinueLastOrderInfo>
{
  private String a;
  
  public aw(String paramString, ApiRequest.b<ContinueLastOrderInfo> paramb)
  {
    super(ApiRequest.RequestType.GET, "continue_last_order/continue_last_order_info", paramb);
    a("business_id", paramString);
    a = paramString;
  }
  
  public ContinueLastOrderInfo a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (ContinueLastOrderInfo)ContinueLastOrderInfo.CREATOR.parse(paramJSONObject);
  }
  
  public String b()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.aw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */