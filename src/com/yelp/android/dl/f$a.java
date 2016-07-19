package com.yelp.android.dl;

import com.yelp.android.dm.d;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.d.a;
import rx.f;

class f$a
  extends d.a
  implements f
{
  final AtomicInteger a = new AtomicInteger();
  final PriorityBlockingQueue<f.b> b = new PriorityBlockingQueue();
  private final com.yelp.android.dm.a c = new com.yelp.android.dm.a();
  private final AtomicInteger d = new AtomicInteger();
  
  private f a(final com.yelp.android.dg.a parama, long paramLong)
  {
    if (c.isUnsubscribed()) {
      return d.b();
    }
    parama = new f.b(parama, Long.valueOf(paramLong), a.incrementAndGet());
    b.add(parama);
    if (d.getAndIncrement() == 0)
    {
      do
      {
        parama = (f.b)b.poll();
        if (parama != null) {
          a.call();
        }
      } while (d.decrementAndGet() > 0);
      return d.b();
    }
    d.a(new com.yelp.android.dg.a()
    {
      public void call()
      {
        b.remove(parama);
      }
    });
  }
  
  public f a(com.yelp.android.dg.a parama)
  {
    return a(parama, a());
  }
  
  public f a(com.yelp.android.dg.a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    paramLong = a() + paramTimeUnit.toMillis(paramLong);
    return a(new e(parama, this, paramLong), paramLong);
  }
  
  public boolean isUnsubscribed()
  {
    return c.isUnsubscribed();
  }
  
  public void unsubscribe()
  {
    c.unsubscribe();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dl.f.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */