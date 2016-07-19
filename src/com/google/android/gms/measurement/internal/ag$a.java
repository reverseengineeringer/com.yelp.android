package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.la.b;
import com.google.android.gms.internal.la.e;
import java.util.ArrayList;
import java.util.List;

class ag$a
  implements o.b
{
  la.e a;
  List<Long> b;
  List<la.b> c;
  long d;
  
  private ag$a(ag paramag) {}
  
  private long a(la.b paramb)
  {
    return c.longValue() / 1000L / 60L / 60L;
  }
  
  public void a(la.e parame)
  {
    zzx.zzz(parame);
    a = parame;
  }
  
  boolean a()
  {
    return (c == null) || (c.isEmpty());
  }
  
  public boolean a(long paramLong, la.b paramb)
  {
    zzx.zzz(paramb);
    if (c == null) {
      c = new ArrayList();
    }
    if (b == null) {
      b = new ArrayList();
    }
    if ((c.size() > 0) && (a((la.b)c.get(0)) != a(paramb))) {
      return false;
    }
    long l = d + paramb.g();
    if (l >= e.d().T()) {
      return false;
    }
    d = l;
    c.add(paramb);
    b.add(Long.valueOf(paramLong));
    return c.size() < e.d().U();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.ag.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */