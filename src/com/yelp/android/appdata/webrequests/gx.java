package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.User;
import com.yelp.android.serializable.ah;
import org.json.JSONObject;

public class gx
  extends g<Void, Void, User>
{
  public gx(m<User> paramm, String paramString1, String paramString2)
  {
    super(ApiRequest.RequestType.GET, "user/profile", paramm);
    if (paramString1 != null) {
      addUrlParam("user_id", paramString1);
    }
    while (paramString2 == null) {
      return;
    }
    addUrlParam("check_in_id", paramString2);
  }
  
  public User a(JSONObject paramJSONObject)
  {
    return (User)User.CREATOR.parse(paramJSONObject.getJSONObject("user"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */