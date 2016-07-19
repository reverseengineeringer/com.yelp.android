package com.google.android.gms.internal;

import java.util.Arrays;
import java.util.List;
import java.util.Map;

@fv
class gc
{
  private final List<String> a;
  private final List<String> b;
  private final String c;
  private final String d;
  private final String e;
  private final String f;
  private final boolean g;
  private final boolean h;
  private final String i;
  private String j;
  private int k;
  
  public gc(int paramInt, Map<String, String> paramMap)
  {
    j = ((String)paramMap.get("url"));
    d = ((String)paramMap.get("base_uri"));
    e = ((String)paramMap.get("post_parameters"));
    g = b((String)paramMap.get("drt_include"));
    h = b((String)paramMap.get("pan_include"));
    c = ((String)paramMap.get("activation_overlay_url"));
    b = c((String)paramMap.get("check_packages"));
    i = ((String)paramMap.get("request_id"));
    f = ((String)paramMap.get("type"));
    a = c((String)paramMap.get("errors"));
    k = paramInt;
  }
  
  private static boolean b(String paramString)
  {
    return (paramString != null) && ((paramString.equals("1")) || (paramString.equals("true")));
  }
  
  private List<String> c(String paramString)
  {
    if (paramString == null) {
      return null;
    }
    return Arrays.asList(paramString.split(","));
  }
  
  public int a()
  {
    return k;
  }
  
  public void a(String paramString)
  {
    j = paramString;
  }
  
  public List<String> b()
  {
    return a;
  }
  
  public String c()
  {
    return e;
  }
  
  public String d()
  {
    return j;
  }
  
  public String e()
  {
    return f;
  }
  
  public boolean f()
  {
    return g;
  }
  
  public String g()
  {
    return i;
  }
  
  public boolean h()
  {
    return h;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */