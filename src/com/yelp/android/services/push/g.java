package com.yelp.android.services.push;

import android.net.Uri;
import android.os.Bundle;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

public class g
{
  private final String a;
  private final String b;
  private final String c;
  private final Uri d;
  private final Map<String, String> e;
  
  public g(Bundle paramBundle)
  {
    a = paramBundle.getString("message");
    b = paramBundle.getString("sender");
    c = paramBundle.getString("device_id");
    d = Uri.parse(paramBundle.getString("url"));
    e = new HashMap();
    Iterator localIterator = paramBundle.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      Object localObject = paramBundle.get(str);
      if ((localObject instanceof String)) {
        e.put(str, (String)localObject);
      }
    }
  }
  
  protected g(g paramg)
  {
    a = paramg.c();
    b = paramg.d();
    c = paramg.g();
    d = paramg.f();
    e = paramg.e();
  }
  
  public String c()
  {
    return a;
  }
  
  public String d()
  {
    return b;
  }
  
  public Map<String, String> e()
  {
    return e;
  }
  
  public Uri f()
  {
    return d;
  }
  
  public String g()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.push.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */