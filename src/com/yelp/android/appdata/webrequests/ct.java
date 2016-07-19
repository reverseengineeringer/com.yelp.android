package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.User;
import org.json.JSONException;
import org.json.JSONObject;

public class ct
  extends b<Void, Void, User>
{
  private final User a;
  private final boolean g;
  
  public ct(ApiRequest.b<User> paramb, User paramUser, boolean paramBoolean)
  {
    super(ApiRequest.RequestType.POST, "account/user/save", paramb);
    b("user_id", paramUser.ae());
    if (!paramBoolean) {}
    for (boolean bool = true;; bool = false)
    {
      b("alert", bool);
      a = paramUser;
      g = paramBoolean;
      return;
    }
  }
  
  public User a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    paramJSONObject = a;
    if (!g) {}
    for (boolean bool = true;; bool = false)
    {
      paramJSONObject.a(bool);
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.ct
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */