package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import org.json.JSONObject;

public class ci
  extends g<Void, Void, String>
{
  public ci(m<String> paramm, String paramString)
  {
    super(ApiRequest.RequestType.POST, "account/send_password_email_secure", paramm);
    addPostParam("email", paramString);
  }
  
  public String a(JSONObject paramJSONObject)
  {
    String str = null;
    if (!paramJSONObject.isNull("email")) {
      str = paramJSONObject.getString("email");
    }
    return str;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ci
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */