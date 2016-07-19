package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.ContinueLastOrderAvailability;
import com.yelp.parcelgen.JsonParser.DualCreator;
import org.json.JSONException;
import org.json.JSONObject;

public class av
  extends b<Void, Void, ContinueLastOrderAvailability>
{
  public av(String paramString, ApiRequest.b<ContinueLastOrderAvailability> paramb)
  {
    super(ApiRequest.RequestType.GET, "continue_last_order/check_availability", paramb);
    a("business_id", paramString);
  }
  
  public ContinueLastOrderAvailability a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (ContinueLastOrderAvailability)ContinueLastOrderAvailability.CREATOR.parse(paramJSONObject);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.av
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */