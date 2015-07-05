package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import org.json.JSONObject;

public class gd
  extends g<String, Void, String>
{
  public gd(m<String> paramm)
  {
    super(ApiRequest.RequestType.GET, "account/twitter/get_request_token", paramm);
    addUrlParam("oauth_callback", "yelp:///twitter_oauth");
  }
  
  public String a(JSONObject paramJSONObject)
  {
    return paramJSONObject.getString("oauth_token");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */