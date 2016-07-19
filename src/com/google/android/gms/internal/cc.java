package com.google.android.gms.internal;

import java.util.Map;

@fv
public class cc
  implements bz
{
  private final cd a;
  
  public cc(cd paramcd)
  {
    a = paramcd;
  }
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    boolean bool1 = "1".equals(paramMap.get("transparentBackground"));
    boolean bool2 = "1".equals(paramMap.get("blur"));
    try
    {
      if (paramMap.get("blurRadius") != null)
      {
        f = Float.parseFloat((String)paramMap.get("blurRadius"));
        a.b(bool1);
        a.a(bool2, f);
        return;
      }
    }
    catch (NumberFormatException paramib)
    {
      for (;;)
      {
        gz.b("Fail to parse float", paramib);
        float f = 0.0F;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */