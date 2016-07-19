package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class bm
  extends b<Void, Void, String>
{
  public bm(String paramString1, String paramString2, ApiRequest.b<String> paramb)
  {
    super(ApiRequest.RequestType.POST, "event/flag", paramb);
    b("event_id", paramString1);
    b("message", paramString2);
  }
  
  public String a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return paramJSONObject.getString("success_title");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */