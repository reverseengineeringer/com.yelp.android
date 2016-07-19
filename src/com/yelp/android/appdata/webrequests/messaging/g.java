package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class g
  extends b<Void, Void, Boolean>
{
  public g(String paramString, ApiRequest.b<Boolean> paramb)
  {
    super(ApiRequest.RequestType.GET, "/business/info/messaging_other_biz", paramb);
    a("business_id", paramString);
  }
  
  public Boolean a(JSONObject paramJSONObject)
    throws JSONException
  {
    return Boolean.valueOf(paramJSONObject.getBoolean("is_eligible"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */