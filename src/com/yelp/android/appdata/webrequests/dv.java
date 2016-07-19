package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class dv
  extends b<Void, Void, String>
{
  public dv(String paramString1, String paramString2, String paramString3, ApiRequest.b<String> paramb)
  {
    super(ApiRequest.RequestType.POST, "/review/flag", paramb);
    b("review_id", paramString1);
    b("reason", paramString2);
    b("message", paramString3);
  }
  
  public String a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return paramJSONObject.optString("success_title");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */