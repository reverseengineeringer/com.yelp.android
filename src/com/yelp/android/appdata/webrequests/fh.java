package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.User;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class fh
  extends b<Void, Void, a>
{
  public fh(User paramUser, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "user/friends", paramb);
    a("user_id", paramUser.ae());
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("friends"), User.CREATOR), paramJSONObject.getInt("total"));
  }
  
  public static class a
  {
    final ArrayList<User> a;
    final int b;
    
    public a(ArrayList<User> paramArrayList, int paramInt)
    {
      a = paramArrayList;
      b = paramInt;
    }
    
    public ArrayList<User> a()
    {
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */