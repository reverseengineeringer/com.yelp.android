package com.yelp.android.appdata.webrequests;

import android.os.Bundle;
import com.yelp.android.appdata.webrequests.core.b;
import com.yelp.android.serializable.User;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONException;
import org.json.JSONObject;

public class cs
  extends b<Void, Void, List<User>>
{
  private String a;
  private ArrayList<User> g = new ArrayList();
  private boolean h;
  
  public cs(ApiRequest.b<List<User>> paramb, String paramString, int paramInt)
  {
    super(ApiRequest.RequestType.GET, "user/search", paramb);
    a = paramString;
    a("q", a);
    a("limit", 10);
    a("offset", paramInt);
  }
  
  public static cs a(Bundle paramBundle, ApiRequest.b<List<User>> paramb)
  {
    ArrayList localArrayList = paramBundle.getParcelableArrayList("MSR.results");
    paramb = new cs(paramb, paramBundle.getString("MSR.query"), localArrayList.size());
    paramb.b(paramBundle.getBoolean("MSR.moreflag"));
    paramb.a(localArrayList);
    return paramb;
  }
  
  private void a(ArrayList<User> paramArrayList)
  {
    g = paramArrayList;
  }
  
  private void b(boolean paramBoolean)
  {
    h = paramBoolean;
  }
  
  public List<User> a(JSONObject paramJSONObject)
    throws YelpException, JSONException
  {
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("users"), User.CREATOR);
    g.addAll(localArrayList);
    if ((!localArrayList.isEmpty()) && (g.size() < paramJSONObject.getInt("total"))) {}
    for (boolean bool = true;; bool = false)
    {
      h = bool;
      return g;
    }
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("MSR.results", g);
    paramBundle.putBoolean("MSR.moreflag", h);
    paramBundle.putString("MSR.query", a);
  }
  
  public void a(String paramString)
  {
    a(true);
    a = paramString;
    a("q", a);
    g = new ArrayList();
  }
  
  public ArrayList<User> b()
  {
    return g;
  }
  
  public void d()
  {
    if (!u()) {
      if (g != null) {
        break label33;
      }
    }
    label33:
    for (int i = 0;; i = g.size())
    {
      a("offset", i);
      g(new Void[0]);
      return;
    }
  }
  
  public boolean f()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.cs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */