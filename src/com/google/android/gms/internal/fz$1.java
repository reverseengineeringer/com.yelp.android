package com.google.android.gms.internal;

import java.util.Map;

class fz$1
  implements bz
{
  fz$1(fz paramfz) {}
  
  public void a(ib arg1, Map<String, String> paramMap)
  {
    synchronized (fz.a(a))
    {
      if (fz.b(a).isDone()) {
        return;
      }
      if (!fz.c(a).equals(paramMap.get("request_id"))) {
        return;
      }
    }
    paramMap = new gc(1, paramMap);
    gz.d("Invalid " + paramMap.e() + " request error: " + paramMap.b());
    fz.b(a).b(paramMap);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fz.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */