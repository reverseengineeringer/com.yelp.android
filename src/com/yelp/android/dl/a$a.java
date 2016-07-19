package com.yelp.android.dl;

import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

final class a$a
{
  private final long a;
  private final ConcurrentLinkedQueue<a.c> b;
  private final com.yelp.android.dm.b c;
  private final ScheduledExecutorService d;
  private final Future<?> e;
  
  a$a(long paramLong, TimeUnit paramTimeUnit)
  {
    ScheduledFuture localScheduledFuture;
    if (paramTimeUnit != null)
    {
      paramLong = paramTimeUnit.toNanos(paramLong);
      a = paramLong;
      b = new ConcurrentLinkedQueue();
      c = new com.yelp.android.dm.b();
      if (paramTimeUnit == null) {
        break label105;
      }
      paramTimeUnit = Executors.newScheduledThreadPool(1, a.c);
      rx.internal.schedulers.b.b(paramTimeUnit);
      localScheduledFuture = paramTimeUnit.scheduleWithFixedDelay(new Runnable()
      {
        public void run()
        {
          b();
        }
      }, a, a, TimeUnit.NANOSECONDS);
    }
    for (;;)
    {
      d = paramTimeUnit;
      e = localScheduledFuture;
      return;
      paramLong = 0L;
      break;
      label105:
      localScheduledFuture = null;
      paramTimeUnit = (TimeUnit)localObject;
    }
  }
  
  a.c a()
  {
    if (c.isUnsubscribed()) {
      return a.d;
    }
    while (!b.isEmpty())
    {
      localc = (a.c)b.poll();
      if (localc != null) {
        return localc;
      }
    }
    a.c localc = new a.c(a.b);
    c.a(localc);
    return localc;
  }
  
  void a(a.c paramc)
  {
    paramc.a(c() + a);
    b.offer(paramc);
  }
  
  void b()
  {
    if (!b.isEmpty())
    {
      long l = c();
      Iterator localIterator = b.iterator();
      while (localIterator.hasNext())
      {
        a.c localc = (a.c)localIterator.next();
        if (localc.c() > l) {
          break;
        }
        if (b.remove(localc)) {
          c.b(localc);
        }
      }
    }
  }
  
  long c()
  {
    return System.nanoTime();
  }
  
  void d()
  {
    try
    {
      if (e != null) {
        e.cancel(true);
      }
      if (d != null) {
        d.shutdownNow();
      }
      return;
    }
    finally
    {
      c.unsubscribe();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dl.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */