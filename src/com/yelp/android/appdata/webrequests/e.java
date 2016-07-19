package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import org.json.JSONException;
import org.json.JSONObject;

public class e
  extends b<Void, Void, a>
{
  public e()
  {
    super(ApiRequest.RequestType.GET, "account/guest_user_info", null);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(paramJSONObject);
  }
  
  public static class a
  {
    public final String a;
    public final String b;
    public final String c;
    
    public a(JSONObject paramJSONObject)
      throws JSONException
    {
      a = paramJSONObject.getString("first_name");
      b = paramJSONObject.getString("last_name");
      c = paramJSONObject.getString("email");
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */