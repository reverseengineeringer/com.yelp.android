package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class l
  extends b<Void, Void, a>
{
  public l(String paramString1, String paramString2, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.POST, "business/message/save", paramb);
    b("business_id", paramString1);
    b("message", paramString2);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(paramJSONObject.optString("confirmation_text"), paramJSONObject.optString("message_id"));
  }
  
  public static final class a
  {
    public final String a;
    public final String b;
    
    public a(String paramString1, String paramString2)
    {
      a = paramString1;
      b = paramString2;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */