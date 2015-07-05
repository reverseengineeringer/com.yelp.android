package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.n;
import com.yelp.android.av.g;
import com.yelp.android.serializable.en;
import com.yelp.android.serializable.eq;
import com.yelp.android.services.a;
import org.json.JSONObject;

public class dj
  extends g<Void, Void, eq>
{
  private final String a;
  private final String b;
  
  protected dj(String paramString1, String paramString2, String paramString3, m<eq> paramm)
  {
    super(ApiRequest.RequestType.POST, "account/login_secure", paramm);
    a = paramString1;
    b = paramString2;
    addPostParam("email", paramString1);
    addPostParam("password", paramString2);
    if (n.b(8)) {
      addPostParam("device_token", a.a(paramString3));
    }
  }
  
  public eq a(JSONObject paramJSONObject)
  {
    return en.a(paramJSONObject);
  }
  
  public String a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */