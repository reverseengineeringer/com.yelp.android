package com.yelp.android.ar;

import com.comscore.utils.f;
import com.comscore.utils.h;
import com.comscore.utils.m;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicLong;

public class c
{
  com.comscore.analytics.a a;
  protected AtomicLong b = new AtomicLong(-1L);
  protected AtomicInteger c = new AtomicInteger(0);
  protected AtomicLong d = new AtomicLong(-1L);
  protected AtomicInteger e = new AtomicInteger(0);
  protected AtomicInteger f = new AtomicInteger(0);
  protected Object g = new Object();
  private com.comscore.applications.a h = null;
  
  public c(com.comscore.analytics.a parama)
  {
    a = parama;
  }
  
  private void a(com.comscore.applications.a parama)
  {
    synchronized (g)
    {
      if (h == null)
      {
        h = parama;
        h.b();
        return;
      }
      h.a(parama.a());
    }
  }
  
  private boolean b()
  {
    boolean bool2 = false;
    m localm = a.r();
    long l = h.a();
    if (l < b.get())
    {
      c.set(0);
      b.set(l);
      e.set(0);
      d.set(l);
      localm.a("q_dcc", Integer.toString(e.get(), 10));
      localm.a("q_dcf", Long.toString(d.get(), 10));
    }
    for (;;)
    {
      boolean bool1 = bool2;
      if (c.get() < 20)
      {
        bool1 = bool2;
        if (e.get() < 6000)
        {
          c.incrementAndGet();
          e.getAndIncrement();
          localm.a("q_dcc", Integer.toString(e.get(), 10));
          bool1 = true;
        }
      }
      return bool1;
      if (l - b.get() > 1000L)
      {
        c.set(0);
        b.set(l);
      }
      if (l - d.get() > 86400000L)
      {
        e.set(0);
        d.set(l);
        localm.a("q_dcc", Integer.toString(e.get(), 10));
        localm.a("q_dcf", Long.toString(d.get(), 10));
      }
    }
  }
  
  private void d(b paramb)
  {
    if (!a.ao()) {}
    do
    {
      return;
      com.comscore.utils.c.a(this, "sendMeasurmement: " + paramb.a(a.ag()));
      c(paramb);
    } while ((paramb instanceof com.comscore.applications.a));
    b(paramb);
    a(paramb);
    new com.comscore.metrics.a(a, paramb).b();
  }
  
  public void a()
  {
    if (!a.ao()) {}
    do
    {
      for (;;)
      {
        return;
        m localm = a.r();
        if ((localm.a("q_dcc").booleanValue()) && (localm.a("q_dcf").booleanValue())) {
          try
          {
            int i = Integer.parseInt(localm.b("q_dcc"), 10);
            long l = Long.parseLong(localm.b("q_dcf"), 10);
            if (h.a() >= l)
            {
              e.set(i);
              d.set(l);
              return;
            }
          }
          catch (NumberFormatException localNumberFormatException) {}
        }
      }
    } while (!f.a);
    com.comscore.utils.c.b(this, "Unexpected error parsing storage data: ");
    com.comscore.utils.c.a(localNumberFormatException);
    throw localNumberFormatException;
  }
  
  protected void a(b paramb)
  {
    if (!a.ao()) {}
    do
    {
      return;
      paramb.b(new a("c12", a.S(), Boolean.valueOf(false)));
    } while (a.R() == null);
    paramb.b(new a("ns_ak", a.R(), Boolean.valueOf(false)));
  }
  
  public boolean a(b paramb, boolean paramBoolean)
  {
    if (!a.ao()) {}
    while (paramb == null) {
      return false;
    }
    if ((!b()) && (a.r() != null))
    {
      com.comscore.utils.c.a(this, "Data not sent");
      return false;
    }
    return a.s().a(new e(this, paramb), paramBoolean);
  }
  
  public void b(b paramb)
  {
    if (!a.ao()) {
      return;
    }
    f.getAndIncrement();
    paramb.b(new a("ns_ap_ec", String.valueOf(f), Boolean.valueOf(false)));
  }
  
  public void c(b paramb)
  {
    if (!a.ao()) {
      return;
    }
    synchronized (g)
    {
      if ((paramb instanceof com.comscore.applications.a))
      {
        a((com.comscore.applications.a)paramb);
        return;
      }
    }
    if (h != null)
    {
      Iterator localIterator = h.a().iterator();
      while (localIterator.hasNext()) {
        paramb.b((a)localIterator.next());
      }
      h = null;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ar.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */