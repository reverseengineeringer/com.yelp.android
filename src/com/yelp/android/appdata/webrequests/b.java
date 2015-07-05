package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import org.json.JSONObject;

public class b
  extends g<String, Void, Boolean>
{
  public b(String paramString, m paramm)
  {
    super(ApiRequest.RequestType.GET, "account/info/confirmed", paramm);
    addUrlParam("user_id", paramString);
  }
  
  public Boolean a(JSONObject paramJSONObject)
  {
    return Boolean.valueOf(paramJSONObject.optBoolean("is_account_confirmed"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */