package com.google.android.gms.internal;

import java.util.Map;

class fz$2
  implements bz
{
  fz$2(fz paramfz) {}
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    gc localgc;
    synchronized (fz.a(a))
    {
      if (fz.b(a).isDone()) {
        return;
      }
      localgc = new gc(-2, paramMap);
      if (!fz.c(a).equals(localgc.g()))
      {
        gz.d(localgc.g() + " ==== " + fz.c(a));
        return;
      }
    }
    String str = localgc.d();
    if (str == null)
    {
      gz.d("URL missing in loadAdUrl GMSG.");
      return;
    }
    if (str.contains("%40mediation_adapters%40"))
    {
      paramib = str.replaceAll("%40mediation_adapters%40", gx.a(paramib.getContext(), (String)paramMap.get("check_adapters"), fz.d(a)));
      localgc.a(paramib);
      gz.e("Ad request URL modified to " + paramib);
    }
    fz.b(a).b(localgc);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fz.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */