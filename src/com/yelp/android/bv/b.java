package com.yelp.android.bv;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import org.json.JSONException;
import org.json.JSONObject;

public class b
  extends com.yelp.android.appdata.webrequests.core.b<Void, Void, Integer>
{
  public b(String paramString1, String paramString2, ApiRequest.b<Integer> paramb)
  {
    super(ApiRequest.RequestType.GET, "event/messages/status", paramb);
    a("event_id", paramString1);
    a("revision", paramString2);
  }
  
  public Integer a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return Integer.valueOf(paramJSONObject.getInt("total"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bv.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */