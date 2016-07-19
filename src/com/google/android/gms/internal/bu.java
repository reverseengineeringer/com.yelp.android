package com.google.android.gms.internal;

import java.util.Map;

@fv
public final class bu
  implements bz
{
  private final bv a;
  
  public bu(bv parambv)
  {
    a = parambv;
  }
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    paramib = (String)paramMap.get("name");
    if (paramib == null)
    {
      gz.d("App event with no name parameter.");
      return;
    }
    a.a(paramib, (String)paramMap.get("info"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bu
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */