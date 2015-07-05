package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.g;
import org.json.JSONObject;

public class i
  extends g<Void, Void, j>
{
  public i(m<j> paramm, String paramString)
  {
    super(ApiRequest.RequestType.GET, "business/info/messaging", paramm);
    addUrlParam("business_id", paramString);
  }
  
  public j a(JSONObject paramJSONObject)
  {
    return new j(paramJSONObject.optString("response_time_text"), paramJSONObject.optBoolean("show_warning_icon"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */