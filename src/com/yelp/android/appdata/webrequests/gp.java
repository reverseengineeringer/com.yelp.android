package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.User;
import com.yelp.parcelgen.JsonUtil;
import org.json.JSONObject;

public class gp
  extends g<Void, Void, gq>
{
  public gp(User paramUser, m<gq> paramm)
  {
    super(ApiRequest.RequestType.GET, "user/friends", paramm);
    addUrlParam("user_id", paramUser.getId());
  }
  
  public gq a(JSONObject paramJSONObject)
  {
    return new gq(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("friends"), User.CREATOR), paramJSONObject.getInt("total"));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.gp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */