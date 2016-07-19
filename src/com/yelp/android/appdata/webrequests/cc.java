package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.User;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;

public class cc
  extends b<Void, Void, a>
{
  public cc(ApiRequest.b<a> paramb, Iterable<String> paramIterable, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(ApiRequest.RequestType.POST, "user/friend_finder_v2", paramb);
    if (paramIterable != null) {
      b("emails", paramIterable);
    }
    b("ignored", paramBoolean1);
    b("include_facebook", paramBoolean2);
  }
  
  public a a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("users"), User.CREATOR);
    int i = paramJSONObject.optInt("ignored_count", 0);
    Object localObject = Collections.emptyMap();
    if (!paramJSONObject.isNull("user_id_to_email"))
    {
      paramJSONObject = paramJSONObject.getJSONObject("user_id_to_email");
      localObject = new HashMap(paramJSONObject.length(), 1.0F);
      Iterator localIterator = paramJSONObject.keys();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        ((HashMap)localObject).put(str, paramJSONObject.getString(str));
      }
    }
    return new a((Map)localObject, localArrayList, i);
  }
  
  public static final class a
  {
    final ArrayList<User> a;
    final int b;
    final Map<String, String> c;
    
    public a(Map<String, String> paramMap, ArrayList<User> paramArrayList, int paramInt)
    {
      c = paramMap;
      a = paramArrayList;
      b = paramInt;
    }
    
    public ArrayList<User> a()
    {
      return a;
    }
    
    public Map<String, String> b()
    {
      return c;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */