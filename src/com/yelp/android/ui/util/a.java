package com.yelp.android.ui.util;

import android.os.Bundle;
import com.google.android.gms.ads.doubleclick.d;
import com.google.android.gms.ads.doubleclick.d.a;
import com.yelp.android.appdata.Features;
import java.util.Iterator;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

public class a
{
  private String a;
  private String b;
  
  public a()
  {
    c();
  }
  
  private String b()
  {
    return b;
  }
  
  private void c()
  {
    new a.1(this).execute(new Void[0]);
  }
  
  public d a(JSONObject paramJSONObject)
    throws JSONException
  {
    Bundle localBundle = new Bundle();
    Iterator localIterator = paramJSONObject.keys();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramJSONObject.get(str);
      if ((localObject instanceof String)) {
        localBundle.putString(str, (String)localObject);
      } else if ((localObject instanceof JSONArray)) {
        localBundle.putString(str, ((JSONArray)localObject).join(",").replace("\"", ""));
      }
    }
    if ((b() != null) && (Features.dfp_advertising_hash.isEnabled())) {
      localBundle.putString("adid", b());
    }
    return new d.a().a(new com.yelp.android.bd.a(localBundle)).a();
  }
  
  public String a()
  {
    return a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.util.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */