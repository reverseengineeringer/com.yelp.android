package com.yelp.android.appdata.webrequests;

import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.Tip;
import com.yelp.android.serializable.User;
import com.yelp.parcelgen.JsonUtil;
import java.util.Iterator;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class fp
  extends b<Void, Void, List<Tip>>
{
  private final User a;
  
  public fp(ApiRequest.b<List<Tip>> paramb, User paramUser, int paramInt1, int paramInt2, boolean paramBoolean1, boolean paramBoolean2)
  {
    super(ApiRequest.RequestType.GET, "user/quicktips", paramb);
    a("offset", paramInt1);
    a("limit", paramInt2);
    a("only_first_tips", paramBoolean1);
    a("only_tips_of_the_day", paramBoolean2);
    a = paramUser;
    if (paramUser != null) {
      a("user_id", a.ae());
    }
  }
  
  public List<Tip> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    paramJSONObject = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("quicktips"), Tip.CREATOR);
    Iterator localIterator = paramJSONObject.iterator();
    while (localIterator.hasNext()) {
      ((Tip)localIterator.next()).a(a);
    }
    return paramJSONObject;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.fp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */