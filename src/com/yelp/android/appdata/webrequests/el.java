package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import org.json.JSONObject;

public class el
  extends g<Void, Void, String>
{
  public el(m<String> paramm)
  {
    super(ApiRequest.RequestType.POST, "account/resend_email_confirmation", paramm);
  }
  
  public String a(JSONObject paramJSONObject)
  {
    String str = null;
    if (!paramJSONObject.isNull("email")) {
      str = paramJSONObject.optString("email");
    }
    return str;
  }
  
  protected void processErrorMessage(JSONObject paramJSONObject1, JSONObject paramJSONObject2)
  {
    if (paramJSONObject2.optInt("code") != 402) {
      super.processErrorMessage(paramJSONObject1, paramJSONObject2);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.el
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */