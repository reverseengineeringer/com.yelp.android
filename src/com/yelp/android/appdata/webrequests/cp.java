package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.h;
import com.yelp.android.serializable.j;
import org.json.JSONException;
import org.json.JSONObject;

public class cp
  extends b<Void, Void, j>
{
  private final String a;
  private final String g;
  
  protected cp(String paramString1, String paramString2, ApiRequest.b<j> paramb)
  {
    super(ApiRequest.RequestType.POST, "account/login_secure", paramb);
    a = paramString1;
    g = paramString2;
    b("email", paramString1);
    b("password", paramString2);
  }
  
  public j a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return h.a(paramJSONObject);
  }
  
  public String b()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */