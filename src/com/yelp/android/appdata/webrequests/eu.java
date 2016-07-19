package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class eu
  extends b<String, Void, String>
{
  public eu(ApiRequest.b<String> paramb)
  {
    super(ApiRequest.RequestType.GET, "account/twitter/get_request_token", paramb);
    a("oauth_callback", "yelp:///twitter_oauth");
  }
  
  public String a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return paramJSONObject.getString("oauth_token");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.eu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */