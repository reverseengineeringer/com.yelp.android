package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.a;
import org.json.JSONException;
import org.json.JSONObject;

public class fn
  extends b<Void, Void, User>
{
  public fn(ApiRequest.b<User> paramb, String paramString1, String paramString2)
  {
    super(ApiRequest.RequestType.GET, "user/profile", paramb);
    if (paramString1 != null) {
      a("user_id", paramString1);
    }
    while (paramString2 == null) {
      return;
    }
    a("check_in_id", paramString2);
  }
  
  public User a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return (User)User.CREATOR.parse(paramJSONObject.getJSONObject("user"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */