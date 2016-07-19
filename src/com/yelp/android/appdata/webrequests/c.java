package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class c
  extends b<String, Void, Boolean>
{
  public c(String paramString, ApiRequest.b<Boolean> paramb)
  {
    super(ApiRequest.RequestType.GET, "account/info/confirmed", paramb);
    a("user_id", paramString);
  }
  
  public Boolean a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return Boolean.valueOf(paramJSONObject.optBoolean("is_account_confirmed"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */