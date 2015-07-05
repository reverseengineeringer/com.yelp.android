package com.path.android.jobqueue;

import android.content.Context;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class c
  implements com.yelp.android.au.b
{
  private final long a;
  private boolean b;
  private final Context c;
  private final com.yelp.android.au.c d;
  private final com.yelp.android.ar.a e;
  private final g f;
  private final g g;
  private final a h;
  private final com.yelp.android.as.a i;
  private final Object j = new Object();
  private final ConcurrentHashMap<Long, CountDownLatch> k;
  private final ConcurrentHashMap<Long, CountDownLatch> l;
  private final ScheduledExecutorService m;
  private final Object n = new Object();
  private final Runnable o = new d(this);
  private final com.yelp.android.as.b p = new e(this);
  
  public c(Context paramContext, com.yelp.android.aq.a parama)
  {
    if (parama.h() != null) {
      com.yelp.android.at.b.a(parama.h());
    }
    c = paramContext.getApplicationContext();
    b = true;
    h = new a();
    a = System.nanoTime();
    f = parama.b().a(paramContext, Long.valueOf(a), parama.a());
    g = parama.b().b(paramContext, Long.valueOf(a), parama.a());
    k = new ConcurrentHashMap();
    l = new ConcurrentHashMap();
    d = parama.e();
    e = parama.c();
    if ((d instanceof com.yelp.android.au.a)) {
      ((com.yelp.android.au.a)d).a(this);
    }
    i = new com.yelp.android.as.a(parama, p);
    m = Executors.newSingleThreadScheduledExecutor();
    a();
  }
  
  private long a(Boolean arg1)
  {
    Boolean localBoolean = ???;
    boolean bool;
    if (??? == null)
    {
      if (!(d instanceof com.yelp.android.au.a)) {
        break label76;
      }
      bool = c();
    }
    Long localLong2;
    for (;;)
    {
      localBoolean = Boolean.valueOf(bool);
      synchronized (g)
      {
        localLong2 = g.a(localBoolean.booleanValue());
        if ((localLong2 != null) && (localLong2.longValue() <= System.nanoTime()))
        {
          b();
          return 0L;
          label76:
          bool = true;
        }
      }
    }
    for (;;)
    {
      synchronized (f)
      {
        Long localLong1 = f.a(((Boolean)localObject1).booleanValue());
        if (localLong1 == null) {
          break label171;
        }
        if (localLong2 == null)
        {
          ??? = localLong1;
          if (??? == null) {
            break label202;
          }
          if (???.longValue() >= System.nanoTime()) {
            break;
          }
          b();
          return 0L;
        }
      }
      ??? = (Boolean)localObject2;
      if (((Long)localObject2).longValue() >= localLong2.longValue()) {
        label171:
        ??? = localLong2;
      }
    }
    long l1 = Math.ceil((???.longValue() - System.nanoTime()) / 1000000.0D);
    a(l1);
    return l1;
    label202:
    return Long.MAX_VALUE;
  }
  
  private void a(long paramLong)
  {
    m.schedule(o, paramLong, TimeUnit.MILLISECONDS);
  }
  
  private void a(b paramb)
  {
    com.yelp.android.at.b.a("re-adding job %s", new Object[] { paramb.a() });
    if (paramb.h().isPersistent()) {}
    for (;;)
    {
      synchronized (f)
      {
        f.b(paramb);
        if (paramb.i() != null) {
          h.b(paramb.i());
        }
        return;
      }
      synchronized (g)
      {
        g.b(paramb);
      }
    }
  }
  
  private void a(ConcurrentHashMap<Long, CountDownLatch> paramConcurrentHashMap, long paramLong)
  {
    paramConcurrentHashMap.put(Long.valueOf(paramLong), new CountDownLatch(1));
  }
  
  private int b(boolean paramBoolean)
  {
    int i1;
    synchronized (g)
    {
      i1 = g.a(paramBoolean, h.a());
    }
    synchronized (f)
    {
      int i2 = f.a(paramBoolean, h.a());
      return 0 + i1 + i2;
      localObject1 = finally;
      throw ((Throwable)localObject1);
    }
  }
  
  private void b()
  {
    synchronized (j)
    {
      j.notifyAll();
      i.a();
      return;
    }
  }
  
  private void b(b paramb)
  {
    if (paramb.h().isPersistent()) {}
    for (;;)
    {
      synchronized (f)
      {
        f.c(paramb);
        if (paramb.i() != null) {
          h.b(paramb.i());
        }
        return;
      }
      synchronized (g)
      {
        g.c(paramb);
      }
    }
  }
  
  private void b(ConcurrentHashMap<Long, CountDownLatch> paramConcurrentHashMap, long paramLong)
  {
    paramConcurrentHashMap = (CountDownLatch)paramConcurrentHashMap.get(Long.valueOf(paramLong));
    if (paramConcurrentHashMap == null) {
      return;
    }
    try
    {
      paramConcurrentHashMap.await();
      return;
    }
    catch (InterruptedException paramConcurrentHashMap)
    {
      com.yelp.android.at.b.a(paramConcurrentHashMap, "could not wait for onAdded lock", new Object[0]);
    }
  }
  
  private void c(ConcurrentHashMap<Long, CountDownLatch> paramConcurrentHashMap, long paramLong)
  {
    CountDownLatch localCountDownLatch = (CountDownLatch)paramConcurrentHashMap.get(Long.valueOf(paramLong));
    if (localCountDownLatch != null) {
      localCountDownLatch.countDown();
    }
    paramConcurrentHashMap.remove(Long.valueOf(paramLong));
  }
  
  private boolean c()
  {
    return (d == null) || (d.a(c));
  }
  
  private b d()
  {
    boolean bool = c();
    Collection localCollection;
    b localb1;
    synchronized (n)
    {
      localCollection = h.a();
      synchronized (g)
      {
        localb1 = g.b(bool, localCollection);
        if (localb1 != null) {}
      }
    }
    for (;;)
    {
      synchronized (f)
      {
        localb1 = f.b(bool, localCollection);
        i1 = 1;
        if (localb1 == null)
        {
          return null;
          localObject1 = finally;
          throw ((Throwable)localObject1);
          localObject2 = finally;
          throw ((Throwable)localObject2);
        }
      }
      if ((i1 != 0) && (e != null)) {
        e.a(localb2.h());
      }
      if (localb2.i() != null) {
        h.a(localb2.i());
      }
      if (i1 != 0)
      {
        b(k, localb2.a().longValue());
        return localb2;
      }
      b(l, localb2.a().longValue());
      return localb2;
      int i1 = 0;
    }
  }
  
  @Deprecated
  public long a(int paramInt, long paramLong, BaseJob arg4)
  {
    long l1;
    b localb;
    if (paramLong > 0L)
    {
      l1 = 1000000L * paramLong + System.nanoTime();
      localb = new b(paramInt, ???, l1, Long.MIN_VALUE);
      if (!???.isPersistent()) {
        break label237;
      }
      synchronized (f)
      {
        l1 = f.a(localb);
        a(k, l1);
        if (com.yelp.android.at.b.a()) {
          com.yelp.android.at.b.a("added job id: %d class: %s priority: %d delay: %d group : %s persistent: %s requires network: %s", new Object[] { Long.valueOf(l1), ???.getClass().getSimpleName(), Integer.valueOf(paramInt), Long.valueOf(paramLong), ???.getRunGroupId(), Boolean.valueOf(???.isPersistent()), Boolean.valueOf(???.requiresNetwork()) });
        }
        if (e != null) {
          e.a(???);
        }
        localb.h().onAdded();
        if (!???.isPersistent()) {}
      }
    }
    for (;;)
    {
      synchronized (f)
      {
        c(k, l1);
        b();
        return l1;
        l1 = Long.MIN_VALUE;
        break;
        ??? = finally;
        throw ???;
        label237:
        synchronized (g)
        {
          l1 = g.a(localb);
          a(l, l1);
        }
      }
      synchronized (g)
      {
        c(l, l1);
      }
    }
  }
  
  public long a(Job paramJob)
  {
    return a(paramJob.getPriority(), paramJob.getDelayInMs(), paramJob);
  }
  
  public void a()
  {
    if (b) {
      return;
    }
    b = true;
    b();
  }
  
  public void a(boolean paramBoolean)
  {
    a(Boolean.valueOf(paramBoolean));
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */