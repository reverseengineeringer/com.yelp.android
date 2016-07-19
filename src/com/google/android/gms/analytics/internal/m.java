package com.google.android.gms.analytics.internal;

import android.app.Activity;
import java.util.HashMap;
import java.util.Map;

public class m
  implements ab
{
  public String a;
  public double b = -1.0D;
  public int c = -1;
  public int d = -1;
  public int e = -1;
  public int f = -1;
  public Map<String, String> g = new HashMap();
  
  public String a(Activity paramActivity)
  {
    return a(paramActivity.getClass().getCanonicalName());
  }
  
  public String a(String paramString)
  {
    String str = (String)g.get(paramString);
    if (str != null) {
      return str;
    }
    return paramString;
  }
  
  public boolean a()
  {
    return a != null;
  }
  
  public String b()
  {
    return a;
  }
  
  public boolean c()
  {
    return b >= 0.0D;
  }
  
  public double d()
  {
    return b;
  }
  
  public boolean e()
  {
    return c >= 0;
  }
  
  public int f()
  {
    return c;
  }
  
  public boolean g()
  {
    return d != -1;
  }
  
  public boolean h()
  {
    return d == 1;
  }
  
  public boolean i()
  {
    return e != -1;
  }
  
  public boolean j()
  {
    return e == 1;
  }
  
  public boolean k()
  {
    return f == 1;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */