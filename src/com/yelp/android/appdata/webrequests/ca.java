package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class ca
  extends b<Void, Void, String>
{
  public ca(ApiRequest.b<String> paramb, String paramString)
  {
    super(ApiRequest.RequestType.POST, "account/send_password_email_secure", paramb);
    b("email", paramString);
  }
  
  public String a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    String str = null;
    if (!paramJSONObject.isNull("email")) {
      str = paramJSONObject.getString("email");
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ca
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */