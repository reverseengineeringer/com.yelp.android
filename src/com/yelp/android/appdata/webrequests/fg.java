package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.User;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import org.json.JSONException;
import org.json.JSONObject;

public class fg
  extends b<Void, Void, a>
{
  public fg(int paramInt, ApiRequest.b<a> paramb)
  {
    super(ApiRequest.RequestType.GET, "/user/following", paramb);
    a("offset", paramInt);
    a("limit", 25);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    return new a(JsonUtil.parseJsonList(paramJSONObject.getJSONArray("following"), User.CREATOR), paramJSONObject.getInt("total"));
  }
  
  public static class a
  {
    public final ArrayList<User> a;
    public final int b;
    
    public a(ArrayList<User> paramArrayList, int paramInt)
    {
      a = paramArrayList;
      b = paramInt;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fg
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */