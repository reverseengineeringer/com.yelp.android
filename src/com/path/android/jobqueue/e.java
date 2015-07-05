package com.path.android.jobqueue;

import com.yelp.android.au.a;
import java.util.concurrent.TimeUnit;

class e
  implements com.yelp.android.as.b
{
  e(c paramc) {}
  
  public b a(int paramInt, TimeUnit paramTimeUnit)
  {
    ??? = c.c(a);
    if (??? != null) {
      return (b)???;
    }
    long l1 = System.nanoTime() + paramTimeUnit.toNanos(paramInt);
    long l2 = c.a(a, null);
    paramTimeUnit = (TimeUnit)???;
    label251:
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
      if (c.b(a)) {
        paramTimeUnit = c.c(a);
      }
      for (;;)
      {
        if (paramTimeUnit == null)
        {
          long l3 = l1 - System.nanoTime();
          if (l3 <= 0L) {
            break label251;
          }
          l3 = Math.min(l2, TimeUnit.NANOSECONDS.toMillis(l3));
          if (l3 < 1L)
          {
            break;
            paramTimeUnit = null;
            continue;
          }
          if ((c.d(a) instanceof a)) {
            synchronized (c.e(a))
            {
              try
              {
                c.e(a).wait(l3);
              }
              catch (InterruptedException localInterruptedException1)
              {
                for (;;)
                {
                  com.yelp.android.at.b.a(localInterruptedException1, "exception while waiting for a new job.", new Object[0]);
                }
              }
            }
          }
          try
          {
            synchronized (c.e(a))
            {
              c.e(a).wait(Math.min(500L, l3));
            }
          }
          catch (InterruptedException localInterruptedException2)
          {
            for (;;)
            {
              com.yelp.android.at.b.a(localInterruptedException2, "exception while waiting for a new job.", new Object[0]);
            }
          }
        }
      }
    }
  }
  
  public void a(b paramb)
  {
    c.a(a, paramb);
  }
  
  public boolean a()
  {
    return c.b(a);
  }
  
  public int b()
  {
    c localc = a;
    if ((c.d(a) instanceof a)) {}
    for (boolean bool = c.f(a);; bool = true) {
      return c.a(localc, bool);
    }
  }
  
  public void b(b paramb)
  {
    c.b(a, paramb);
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */