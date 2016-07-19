package com.yelp.android.dl;

import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicReference;
import rx.d.a;
import rx.f;
import rx.internal.schedulers.ScheduledAction;
import rx.internal.util.RxThreadFactory;

final class a
  extends rx.d
{
  static final RxThreadFactory b = new RxThreadFactory("RxCachedThreadScheduler-");
  static final RxThreadFactory c = new RxThreadFactory("RxCachedWorkerPoolEvictor-");
  static final c d;
  static final a f;
  private static final TimeUnit g = TimeUnit.SECONDS;
  final AtomicReference<a> e = new AtomicReference(f);
  
  static
  {
    d = new c(new RxThreadFactory("RxCachedThreadSchedulerShutdown-"));
    d.unsubscribe();
    f = new a(0L, null);
    f.d();
  }
  
  public a()
  {
    c();
  }
  
  public d.a a()
  {
    return new b((a)e.get());
  }
  
  public void c()
  {
    a locala = new a(60L, g);
    if (!e.compareAndSet(f, locala)) {
      locala.d();
    }
  }
  
  private static final class a
  {
    private final long a;
    private final ConcurrentLinkedQueue<a.c> b;
    private final com.yelp.android.dm.b c;
    private final ScheduledExecutorService d;
    private final Future<?> e;
    
    a(long paramLong, TimeUnit paramTimeUnit)
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
  
  private static final class b
    extends d.a
  {
    static final AtomicIntegerFieldUpdater<b> b = AtomicIntegerFieldUpdater.newUpdater(b.class, "a");
    volatile int a;
    private final com.yelp.android.dm.b c = new com.yelp.android.dm.b();
    private final a.a d;
    private final a.c e;
    
    b(a.a parama)
    {
      d = parama;
      e = parama.a();
    }
    
    public f a(com.yelp.android.dg.a parama)
    {
      return a(parama, 0L, null);
    }
    
    public f a(com.yelp.android.dg.a parama, long paramLong, TimeUnit paramTimeUnit)
    {
      if (c.isUnsubscribed()) {
        return com.yelp.android.dm.d.b();
      }
      parama = e.b(parama, paramLong, paramTimeUnit);
      c.a(parama);
      parama.addParent(c);
      return parama;
    }
    
    public boolean isUnsubscribed()
    {
      return c.isUnsubscribed();
    }
    
    public void unsubscribe()
    {
      if (b.compareAndSet(this, 0, 1)) {
        d.a(e);
      }
      c.unsubscribe();
    }
  }
  
  private static final class c
    extends rx.internal.schedulers.b
  {
    private long c = 0L;
    
    c(ThreadFactory paramThreadFactory)
    {
      super();
    }
    
    public void a(long paramLong)
    {
      c = paramLong;
    }
    
    public long c()
    {
      return c;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dl.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */