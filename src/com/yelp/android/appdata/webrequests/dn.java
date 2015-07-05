package com.yelp.android.appdata.webrequests;

import android.os.Bundle;
import com.yelp.android.av.g;
import com.yelp.android.serializable.User;
import com.yelp.parcelgen.JsonUtil;
import java.util.ArrayList;
import java.util.List;
import org.json.JSONObject;

public class dn
  extends g<Void, Void, List<User>>
{
  private String a;
  private ArrayList<User> b = new ArrayList();
  private boolean c;
  
  public dn(m<List<User>> paramm, String paramString, int paramInt)
  {
    super(ApiRequest.RequestType.GET, "user/search", paramm);
    a = paramString;
    addUrlParam("q", a);
    addUrlParam("limit", 10);
    addUrlParam("offset", paramInt);
  }
  
  public static dn a(Bundle paramBundle, m<List<User>> paramm)
  {
    ArrayList localArrayList = paramBundle.getParcelableArrayList("MSR.results");
    paramm = new dn(paramm, paramBundle.getString("MSR.query"), localArrayList.size());
    paramm.a(paramBundle.getBoolean("MSR.moreflag"));
    paramm.a(localArrayList);
    return paramm;
  }
  
  private void a(ArrayList<User> paramArrayList)
  {
    b = paramArrayList;
  }
  
  private void a(boolean paramBoolean)
  {
    c = paramBoolean;
  }
  
  public ArrayList<User> a()
  {
    return b;
  }
  
  public List<User> a(JSONObject paramJSONObject)
  {
    ArrayList localArrayList = JsonUtil.parseJsonList(paramJSONObject.getJSONArray("users"), User.CREATOR);
    b.addAll(localArrayList);
    if ((!localArrayList.isEmpty()) && (b.size() < paramJSONObject.getInt("total"))) {}
    for (boolean bool = true;; bool = false)
    {
      c = bool;
      return b;
    }
  }
  
  public void a(Bundle paramBundle)
  {
    paramBundle.putParcelableArrayList("MSR.results", b);
    paramBundle.putBoolean("MSR.moreflag", c);
    paramBundle.putString("MSR.query", a);
  }
  
  public void a(String paramString)
  {
    cancel(true);
    a = paramString;
    addUrlParam("q", a);
    b = new ArrayList();
  }
  
  public void b()
  {
    if (!isFetching()) {
      if (b != null) {
        break label33;
      }
    }
    label33:
    for (int i = 0;; i = b.size())
    {
      addUrlParam("offset", i);
      executeRepeatable(new Void[0]);
      return;
    }
  }
  
  public boolean c()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.webrequests.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */