package com.yelp.android.analytics;

import com.yelp.android.analytics.iris.b;
import java.util.TreeMap;

public class h
{
  TreeMap<String, String> a = new TreeMap();
  boolean b = false;
  private b c = null;
  private String d;
  
  public final g a()
  {
    if (b) {
      throw new IllegalStateException("Reusing Builder ... bad");
    }
    b = true;
    return new g(c, d, new TreeMap(a));
  }
  
  public h a(b paramb)
  {
    c = paramb;
    return this;
  }
  
  public h a(String paramString)
  {
    d = paramString;
    return this;
  }
  
  public h a(String paramString1, String paramString2)
  {
    a.put(paramString1, paramString2);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.analytics.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */