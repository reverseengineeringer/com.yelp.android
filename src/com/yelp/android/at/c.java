package com.yelp.android.at;

import com.comscore.analytics.a;
import com.comscore.utils.m;
import java.util.concurrent.atomic.AtomicBoolean;

class c
  implements Runnable
{
  private AtomicBoolean a;
  private AtomicBoolean b;
  private Runnable c;
  private a d;
  private long e;
  private long f;
  private long g;
  private boolean h;
  private boolean i;
  
  c(Runnable paramRunnable, a parama, long paramLong1, boolean paramBoolean, long paramLong2)
  {
    c = paramRunnable;
    d = parama;
    long l2 = System.currentTimeMillis();
    long l1;
    if (paramLong1 > 0L)
    {
      l1 = paramLong1;
      e = (l1 + l2);
      if (paramLong1 <= 0L) {
        break label116;
      }
    }
    label116:
    for (boolean bool = true;; bool = false)
    {
      i = bool;
      f = System.currentTimeMillis();
      h = paramBoolean;
      g = paramLong2;
      a = new AtomicBoolean();
      b = new AtomicBoolean();
      b.set(false);
      a.set(false);
      return;
      l1 = 0L;
      break;
    }
  }
  
  long a()
  {
    long l = e - System.currentTimeMillis();
    if (l > 0L) {
      return l;
    }
    return 0L;
  }
  
  long b()
  {
    return e;
  }
  
  boolean c()
  {
    return h;
  }
  
  long d()
  {
    return g;
  }
  
  Runnable e()
  {
    return c;
  }
  
  public void run()
  {
    a.set(true);
    try
    {
      c.run();
      a.set(false);
      b.set(true);
      return;
    }
    catch (Exception localException)
    {
      for (;;)
      {
        com.comscore.utils.c.b(getClass(), "Unexpected error running asynchronous task: ");
        com.comscore.utils.c.a(localException);
        d.r().a("exception_ocurrences", 1L);
        d.u(false);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.at.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */