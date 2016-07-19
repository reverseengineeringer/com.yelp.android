package com.google.android.gms.ads.internal;

import com.google.android.gms.internal.bz;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.r;
import java.util.Map;

class d$1
  implements bz
{
  d$1(d paramd) {}
  
  public void a(ib paramib, Map<String, String> paramMap)
  {
    if (a.f.j != null)
    {
      a.h.a(a.f.i, a.f.j, paramib.b(), paramib);
      return;
    }
    gz.d("Request to enable ActiveView before adState is available.");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.d.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */