package com.yelp.android.appdata.webrequests.messaging;

import com.yelp.android.appdata.webrequests.ApiRequest.RequestType;
import com.yelp.android.appdata.webrequests.ApiRequest.b;
import com.yelp.android.appdata.webrequests.YelpException;
import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class k
  extends b<Void, Void, a>
{
  public k(ApiRequest.b<a> paramb, String paramString)
  {
    super(ApiRequest.RequestType.GET, "business/info/messaging", paramb);
    a("business_id", paramString);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(paramJSONObject.optString("placeholder_text"), paramJSONObject.optString("response_time_text"), paramJSONObject.optBoolean("show_warning_icon"));
  }
  
  public static final class a
  {
    public final String a;
    public final String b;
    public final boolean c;
    
    public a(String paramString1, String paramString2, boolean paramBoolean)
    {
      a = paramString1;
      b = paramString2;
      c = paramBoolean;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.messaging.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */