package com.google.android.gms.tagmanager;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.internal.c.j;
import com.google.android.gms.internal.ld;

class o$c
  implements bg<c.j>
{
  private o$c(o paramo) {}
  
  public void a(bg.a parama)
  {
    if (o.f(aqL) != null) {
      aqL.b(o.f(aqL));
    }
    for (;;)
    {
      o.a(aqL, 3600000L);
      return;
      aqL.b(aqL.aD(Status.Kz));
    }
  }
  
  public void b(c.j paramj)
  {
    synchronized (aqL)
    {
      if (gs == null)
      {
        if (caqL).gs == null)
        {
          bh.T("Current resource is null; network resource is also null");
          o.a(aqL, 3600000L);
          return;
        }
        gs = caqL).gs;
      }
      o.a(aqL, paramj, o.a(aqL).currentTimeMillis(), false);
      bh.V("setting refresh time to current time: " + o.d(aqL));
      if (!o.e(aqL)) {
        o.a(aqL, paramj);
      }
      return;
    }
  }
  
  public void ps() {}
}

/* Location:
 * Qualified Name:     com.google.android.gms.tagmanager.o.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */