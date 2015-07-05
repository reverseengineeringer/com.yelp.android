package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.User;
import org.json.JSONObject;

public class do
  extends g<Void, Void, User>
{
  private final User a;
  private final boolean b;
  
  public do(m<User> paramm, User paramUser, boolean paramBoolean)
  {
    super(ApiRequest.RequestType.POST, "account/user/save", paramm);
    addPostParam("user_id", paramUser.getId());
    if (!paramBoolean) {}
    for (boolean bool = true;; bool = false)
    {
      addPostParam("alert", bool);
      a = paramUser;
      b = paramBoolean;
      return;
    }
  }
  
  public User a(JSONObject paramJSONObject)
  {
    paramJSONObject = a;
    if (!b) {}
    for (boolean bool = true;; bool = false)
    {
      paramJSONObject.setSendingNotifications(bool);
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */