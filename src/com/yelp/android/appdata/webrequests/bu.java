package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class bu
  extends b<String, Void, Boolean>
{
  public bu(ApiRequest.b paramb)
  {
    super(ApiRequest.RequestType.GET, "account/facebook/auto_friend", paramb);
  }
  
  public Boolean a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return Boolean.valueOf(paramJSONObject.optBoolean("enabled"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */