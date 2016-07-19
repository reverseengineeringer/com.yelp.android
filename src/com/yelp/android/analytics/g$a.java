package com.yelp.android.analytics;

import com.yelp.android.analytics.iris.a;
import java.util.TreeMap;

public class g$a
{
  TreeMap<String, String> a = new TreeMap();
  boolean b = false;
  private a c = null;
  private String d;
  
  public a a(a parama)
  {
    c = parama;
    return this;
  }
  
  public a a(String paramString)
  {
    d = paramString;
    return this;
  }
  
  public a a(String paramString1, String paramString2)
  {
    a.put(paramString1, paramString2);
    return this;
  }
  
  public final g a()
  {
    if (b) {
      throw new IllegalStateException("Reusing Builder ... bad");
    }
    b = true;
    return new g(c, d, new TreeMap(a));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.g.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */