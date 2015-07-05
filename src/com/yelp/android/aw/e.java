package com.yelp.android.aw;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.m;
import com.yelp.android.av.g;
import org.json.JSONObject;

public class e
  extends g<Void, Void, Integer>
{
  public e(String paramString1, String paramString2, m<Integer> paramm)
  {
    super(ApiRequest.RequestType.GET, "event/messages/status", paramm);
    addUrlParam("event_id", paramString1);
    addUrlParam("revision", paramString2);
  }
  
  public Integer a(JSONObject paramJSONObject)
  {
    return Integer.valueOf(paramJSONObject.getInt("total"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aw.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */