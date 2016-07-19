package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONObject;

public class do
  extends b<Void, Void, String>
{
  public do(ApiRequest.b<String> paramb)
  {
    super(ApiRequest.RequestType.POST, "account/resend_email_confirmation", paramb);
  }
  
  public String a(JSONObject paramJSONObject)
    throws YelpException
  {
    return paramJSONObject.optString("email");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */