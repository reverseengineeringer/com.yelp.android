package com.google.android.gms.internal;

import java.util.Map;
import java.util.Set;

class ic$d
  implements bz
{
  private ic$d(ic paramic) {}
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    if (paramMap.keySet().contains("start")) {
      ic.a(a);
    }
    do
    {
      return;
      if (paramMap.keySet().contains("stop"))
      {
        ic.b(a);
        return;
      }
    } while (!paramMap.keySet().contains("cancel"));
    ic.c(a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ic.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */