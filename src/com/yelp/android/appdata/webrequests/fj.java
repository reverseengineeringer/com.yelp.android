package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class fj
  extends b<Void, Void, Integer>
{
  public fj(ApiRequest.b<Integer> paramb)
  {
    super(ApiRequest.RequestType.GET, "user/order_count", paramb);
  }
  
  public Integer a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return Integer.valueOf(paramJSONObject.getInt("count"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */