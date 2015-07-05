package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import org.json.JSONObject;

public class cc
  extends g<String, Void, Boolean>
{
  public cc(m paramm)
  {
    super(ApiRequest.RequestType.GET, "account/facebook/auto_friend", paramm);
  }
  
  public Boolean a(JSONObject paramJSONObject)
  {
    return Boolean.valueOf(paramJSONObject.optBoolean("enabled"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */