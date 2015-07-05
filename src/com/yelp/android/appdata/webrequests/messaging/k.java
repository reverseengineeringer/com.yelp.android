package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.g;
import org.json.JSONObject;

public class k
  extends g<Void, Void, String>
{
  public k(String paramString1, String paramString2, m<String> paramm)
  {
    super(ApiRequest.RequestType.POST, "business/message/save", paramm);
    addPostParam("business_id", paramString1);
    addPostParam("message", paramString2);
  }
  
  public String a(JSONObject paramJSONObject)
  {
    return paramJSONObject.optString("confirmation_text");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */