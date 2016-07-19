package com.path.android.jobqueue;

import android.content.Context;
import com.path.android.jobqueue.persistentQueue.sqlite.SqlHelper;
import com.path.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue;
import com.path.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue.a;
import com.path.android.jobqueue.persistentQueue.sqlite.SqliteJobQueue.b;
import java.util.Collection;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

public class b
  implements com.yelp.android.bq.a.a
{
  private final long a;
  private volatile boolean b;
  private final Context c;
  private final com.yelp.android.bq.b d;
  private final com.yelp.android.bn.a e;
  private final c f;
  private final c g;
  private final g h;
  private final com.yelp.android.bo.a i;
  private final Object j = new Object();
  private final ConcurrentHashMap<Long, CountDownLatch> k;
  private final ConcurrentHashMap<Long, CountDownLatch> l;
  private ScheduledExecutorService m;
  private final Object n = new Object();
  private final Object o = new Object();
  private final Runnable p = new Runnable()
  {
    public void run()
    {
      b.a(b.this);
    }
  };
  private final com.yelp.android.bo.a.a q = new com.yelp.android.bo.a.a()
  {
    public a a(int paramAnonymousInt, TimeUnit paramAnonymousTimeUnit)
    {
      ??? = b.d(b.this);
      if (??? != null) {
        return (a)???;
      }
      long l1 = System.nanoTime() + paramAnonymousTimeUnit.toNanos(paramAnonymousInt);
      long l2 = b.a(b.this, null);
      paramAnonymousTimeUnit = (TimeUnit)???;
      label274:
      for (;;)
      {
        ??? = paramAnonymousTimeUnit;
        if (paramAnonymousTimeUnit != null) {
          break;
        }
        ??? = paramAnonymousTimeUnit;
        if (l1 <= System.nanoTime()) {
          break;
        }
        ??? = paramAnonymousTimeUnit;
        if (!b.b(b.this)) {
          break;
        }
        if (b.b(b.this)) {
          paramAnonymousTimeUnit = b.d(b.this);
        }
        for (;;)
        {
          if (paramAnonymousTimeUnit == null)
          {
            long l3 = l1 - System.nanoTime();
            if (l3 <= 0L) {
              break label274;
            }
            l3 = Math.min(l2, TimeUnit.NANOSECONDS.toMillis(l3));
            if (l3 >= 1L)
            {
              if (!b.b(b.this))
              {
                break;
                paramAnonymousTimeUnit = null;
                continue;
              }
              if ((b.e(b.this) instanceof com.yelp.android.bq.a)) {
                synchronized (b.f(b.this))
                {
                  try
                  {
                    b.f(b.this).wait(l3);
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
                synchronized (b.f(b.this))
                {
                  b.f(b.this).wait(Math.min(500L, l3));
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
    
    public void a(a paramAnonymousa)
    {
      f localf = hretryConstraint;
      if (localf == null)
      {
        b.a(b.this, paramAnonymousa);
        return;
      }
      if (localf.c() != null) {
        paramAnonymousa.b(localf.c().intValue());
      }
      long l2 = -1L;
      long l1 = l2;
      if (localf.b() != null)
      {
        if ((localf.d()) && (paramAnonymousa.i() != null))
        {
          b.c(b.this).a(paramAnonymousa.i(), System.nanoTime() + localf.b().longValue() * 1000000L);
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
        paramAnonymousa.a(l1);
        b.a(b.this, paramAnonymousa);
        return;
        l1 = localf.b().longValue();
        break;
      }
    }
    
    public boolean a()
    {
      return b.b(b.this);
    }
    
    public int b()
    {
      b localb = b.this;
      if ((b.e(b.this) instanceof com.yelp.android.bq.a)) {}
      for (boolean bool = b.g(b.this);; bool = true) {
        return b.a(localb, bool);
      }
    }
    
    public void b(a paramAnonymousa)
    {
      b.b(b.this, paramAnonymousa);
    }
  };
  
  public b(Context paramContext, com.yelp.android.bm.a parama)
  {
    if (parama.h() != null) {
      com.yelp.android.bp.b.a(parama.h());
    }
    c = paramContext.getApplicationContext();
    b = true;
    h = new g();
    a = System.nanoTime();
    f = parama.b().a(paramContext, Long.valueOf(a), parama.a(), parama.j());
    g = parama.b().b(paramContext, Long.valueOf(a), parama.a(), parama.j());
    k = new ConcurrentHashMap();
    l = new ConcurrentHashMap();
    d = parama.e();
    e = parama.c();
    if ((d instanceof com.yelp.android.bq.a)) {
      ((com.yelp.android.bq.a)d).a(this);
    }
    i = new com.yelp.android.bo.a(parama, q);
    m = Executors.newSingleThreadScheduledExecutor();
    a();
  }
  
  private long a(Boolean arg1)
  {
    Boolean localBoolean = ???;
    boolean bool;
    if (??? == null)
    {
      if (!(d instanceof com.yelp.android.bq.a)) {
        break label127;
      }
      bool = c();
    }
    Long localLong;
    Collection localCollection;
    for (;;)
    {
      localBoolean = Boolean.valueOf(bool);
      localLong = h.b();
      localCollection = h.a();
      synchronized (g)
      {
        ??? = g.c(localBoolean.booleanValue(), localCollection);
        if (localLong != null)
        {
          ??? = localLong;
          if (??? != null)
          {
            ??? = localLong;
            if (((Long)???).longValue() >= localLong.longValue()) {}
          }
        }
        else
        {
          ??? = (Boolean)???;
        }
        if ((??? != null) && (???.longValue() <= System.nanoTime()))
        {
          b();
          return 0L;
          label127:
          bool = true;
        }
      }
    }
    Object localObject2;
    for (;;)
    {
      synchronized (f)
      {
        localLong = f.c(((Boolean)localObject1).booleanValue(), localCollection);
        if (localLong == null) {
          break label228;
        }
        if (??? == null)
        {
          localObject2 = localLong;
          if (localObject2 == null) {
            break label260;
          }
          if (((Long)localObject2).longValue() >= System.nanoTime()) {
            break;
          }
          b();
          return 0L;
        }
      }
      localObject2 = localLong;
      if (localLong.longValue() >= ???.longValue()) {
        label228:
        localObject2 = ???;
      }
    }
    long l1 = Math.ceil((((Long)localObject2).longValue() - System.nanoTime()) / 1000000.0D);
    a(l1);
    return l1;
    label260:
    return Long.MAX_VALUE;
  }
  
  private void a(long paramLong)
  {
    m.schedule(p, paramLong, TimeUnit.MILLISECONDS);
  }
  
  private void a(a parama)
  {
    com.yelp.android.bp.b.a("re-adding job %s", new Object[] { parama.a() });
    if (!parama.k()) {
      if (!parama.h().isPersistent()) {}
    }
    for (;;)
    {
      synchronized (f)
      {
        f.b(parama);
        if (parama.i() != null) {
          h.b(parama.i());
        }
        return;
      }
      synchronized (g)
      {
        g.b(parama);
      }
      com.yelp.android.bp.b.a("not re-adding cancelled job " + parama, new Object[0]);
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
  
  private void b(a parama)
  {
    if (parama.h().isPersistent()) {}
    for (;;)
    {
      synchronized (f)
      {
        f.c(parama);
        if (parama.i() != null) {
          h.b(parama.i());
        }
        return;
      }
      synchronized (g)
      {
        g.c(parama);
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
      com.yelp.android.bp.b.a(paramConcurrentHashMap, "could not wait for onAdded lock", new Object[0]);
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
  
  private a d()
  {
    int i1 = 0;
    boolean bool = c();
    com.yelp.android.bp.b.a("looking for next job", new Object[0]);
    Collection localCollection;
    a locala1;
    synchronized (o)
    {
      localCollection = h.a();
      if (com.yelp.android.bp.b.a()) {
        com.yelp.android.bp.b.a("running groups %s", new Object[] { SqlHelper.a(",", localCollection) });
      }
      synchronized (g)
      {
        locala1 = g.b(bool, localCollection);
        com.yelp.android.bp.b.a("non persistent result %s", new Object[] { locala1 });
        if (locala1 != null) {}
      }
    }
    for (;;)
    {
      synchronized (f)
      {
        locala1 = f.b(bool, localCollection);
        com.yelp.android.bp.b.a("persistent result %s", new Object[] { locala1 });
        i1 = 1;
        if (locala1 == null)
        {
          return null;
          localObject1 = finally;
          throw ((Throwable)localObject1);
          localObject2 = finally;
          throw ((Throwable)localObject2);
        }
      }
      if ((i1 != 0) && (e != null)) {
        e.a(locala2.h());
      }
      if (locala2.i() != null) {
        h.a(locala2.i());
      }
      if (i1 != 0) {
        b(k, locala2.a().longValue());
      }
      for (;;)
      {
        locala2.h().setApplicationContext(c);
        return locala2;
        b(l, locala2.a().longValue());
      }
    }
  }
  
  public long a(Job arg1)
  {
    int i1 = ???.getPriority();
    long l1;
    a locala;
    if (???.getDelayInMs() > 0L)
    {
      l1 = System.nanoTime() + ???.getDelayInMs() * 1000000L;
      locala = new a(i1, ???, l1, Long.MIN_VALUE);
      if (!???.isPersistent()) {
        break label247;
      }
      synchronized (f)
      {
        l1 = f.a(locala);
        a(k, l1);
        if (com.yelp.android.bp.b.a()) {
          com.yelp.android.bp.b.a("added job id: %d class: %s priority: %d delay: %d group : %s persistent: %s requires network: %s", new Object[] { Long.valueOf(l1), ???.getClass().getSimpleName(), Integer.valueOf(???.getPriority()), Long.valueOf(???.getDelayInMs()), ???.getRunGroupId(), Boolean.valueOf(???.isPersistent()), Boolean.valueOf(???.requiresNetwork()) });
        }
        if (e != null) {
          e.a(???);
        }
        locala.h().setApplicationContext(c);
        locala.h().onAdded();
        if (!???.isPersistent()) {}
      }
    }
    for (;;)
    {
      synchronized (f)
      {
        c(k, l1);
        a(null);
        return l1;
        l1 = Long.MIN_VALUE;
        break;
        ??? = finally;
        throw ???;
        label247:
        synchronized (g)
        {
          l1 = g.a(locala);
          a(l, l1);
        }
      }
      synchronized (g)
      {
        c(l, l1);
      }
    }
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
  
  public static class a
    implements e
  {
    SqliteJobQueue.b a = new SqliteJobQueue.a();
    
    public c a(Context paramContext, Long paramLong, String paramString, boolean paramBoolean)
    {
      return new com.yelp.android.bl.a(new SqliteJobQueue(paramContext, paramLong.longValue(), paramString, a, paramBoolean));
    }
    
    public c b(Context paramContext, Long paramLong, String paramString, boolean paramBoolean)
    {
      return new com.yelp.android.bl.a(new com.path.android.jobqueue.nonPersistentQueue.f(paramLong.longValue(), paramString, paramBoolean));
    }
  }
}

/* Location:
 * Qualified Name:     com.path.android.jobqueue.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */