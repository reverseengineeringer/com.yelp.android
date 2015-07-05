package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import org.json.JSONObject;

public class et
  extends g<Void, Void, String>
{
  public et(String paramString1, String paramString2, String paramString3, m<String> paramm)
  {
    super(ApiRequest.RequestType.POST, "/review/flag", paramm);
    addPostParam("review_id", paramString1);
    addPostParam("reason", paramString2);
    addPostParam("message", paramString3);
  }
  
  public String a(JSONObject paramJSONObject)
  {
    return paramJSONObject.optString("success_title");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.et
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */