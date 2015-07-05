package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import org.json.JSONObject;

public class bt
  extends g<Void, Void, String>
{
  public bt(String paramString1, String paramString2, m<String> paramm)
  {
    super(ApiRequest.RequestType.POST, "event/flag", paramm);
    addPostParam("event_id", paramString1);
    addPostParam("message", paramString2);
  }
  
  public String a(JSONObject paramJSONObject)
  {
    return paramJSONObject.getString("success_title");
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.bt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */