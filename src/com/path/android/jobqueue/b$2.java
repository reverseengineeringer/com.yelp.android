package com.path.android.jobqueue;

import com.yelp.android.bo.a.a;
import java.util.concurrent.TimeUnit;

class b$2
  implements a.a
{
  b$2(b paramb) {}
  
  public a a(int paramInt, TimeUnit paramTimeUnit)
  {
    ??? = b.d(a);
    if (??? != null) {
      return (a)???;
    }
    long l1 = System.nanoTime() + paramTimeUnit.toNanos(paramInt);
    long l2 = b.a(a, null);
    paramTimeUnit = (TimeUnit)???;
    label274:
    for (;;)
    {
      ??? = paramTimeUnit;
      if (paramTimeUnit != null) {
        break;
      }
      ??? = paramTimeUnit;
      if (l1 <= System.nanoTime()) {
        break;
      }
      ??? = paramTimeUnit;
      if (!b.b(a)) {
        break;
      }
      if (b.b(a)) {
        paramTimeUnit = b.d(a);
      }
      for (;;)
      {
        if (paramTimeUnit == null)
        {
          long l3 = l1 - System.nanoTime();
          if (l3 <= 0L) {
            break label274;
          }
          l3 = Math.min(l2, TimeUnit.NANOSECONDS.toMillis(l3));
          if (l3 >= 1L)
          {
            if (!b.b(a))
            {
              break;
              paramTimeUnit = null;
              continue;
            }
            if ((b.e(a) instanceof com.yelp.android.bq.a)) {
              synchronized (b.f(a))
              {
                try
                {
                  b.f(a).wait(l3);
                }
                catch (InterruptedException localInterruptedException1)
                {
                  for (;;)
                  {
                    com.yelp.android.bp.b.a(localInterruptedException1, "exception while waiting for a new job.", new Object[0]);
                  }
                }
              }
            }
            try
            {
              synchronized (b.f(a))
              {
                b.f(a).wait(Math.min(500L, l3));
              }
            }
            catch (InterruptedException localInterruptedException2)
            {
              for (;;)
              {
                com.yelp.android.bp.b.a(localInterruptedException2, "exception while waiting for a new job.", new Object[0]);
              }
            }
          }
        }
      }
    }
  }
  
  public void a(a parama)
  {
    f localf = hretryConstraint;
    if (localf == null)
    {
      b.a(a, parama);
      return;
    }
    if (localf.c() != null) {
      parama.b(localf.c().intValue());
    }
    long l2 = -1L;
    long l1 = l2;
    if (localf.b() != null)
    {
      if ((localf.d()) && (parama.i() != null))
      {
        b.c(a).a(parama.i(), System.nanoTime() + localf.b().longValue() * 1000000L);
        l1 = l2;
      }
    }
    else {
      if (l1 <= 0L) {
        break label149;
      }
    }
    label149:
    for (l1 = l1 * 1000000L + System.nanoTime();; l1 = Long.MIN_VALUE)
    {
      parama.a(l1);
      b.a(a, parama);
      return;
      l1 = localf.b().longValue();
      break;
    }
  }
  
  public boolean a()
  {
    return b.b(a);
  }
  
  public int b()
  {
    b localb = a;
    if ((b.e(a) instanceof com.yelp.android.bq.a)) {}
    for (boolean bool = b.g(a);; bool = true) {
      return b.a(localb, bool);
    }
  }
  
  public void b(a parama)
  {
    b.b(a, parama);
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.b.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */