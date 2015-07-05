package com.yelp.android.appdata.webrequests;

import com.yelp.android.av.g;
import com.yelp.android.serializable.User;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.json.JSONObject;

public class cl
  extends g<Void, Void, cm>
{
  public cl(m<cm> paramm, Iterable<String> paramIterable, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(ApiRequest.RequestType.POST, "user/friend_finder_v2", paramm);
    if (paramIterable != null) {
      addPostParam("emails", paramIterable);
    }
    addPostParam("ignored", paramBoolean1);
    addPostParam("include_facebook", paramBoolean2);
  }
  
  public cm a(JSONObject paramJSONObject)
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
    return new cm((Map)localObject, localArrayList, i);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */