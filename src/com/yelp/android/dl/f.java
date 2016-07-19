package com.yelp.android.dl;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import rx.d.a;

public final class f
  extends rx.d
{
  private static final f b = new f();
  
  static int a(int paramInt1, int paramInt2)
  {
    if (paramInt1 < paramInt2) {
      return -1;
    }
    if (paramInt1 == paramInt2) {
      return 0;
    }
    return 1;
  }
  
  public d.a a()
  {
    return new a();
  }
  
  private static class a
    extends d.a
    implements rx.f
  {
    final AtomicInteger a = new AtomicInteger();
    final PriorityBlockingQueue<f.b> b = new PriorityBlockingQueue();
    private final com.yelp.android.dm.a c = new com.yelp.android.dm.a();
    private final AtomicInteger d = new AtomicInteger();
    
    private rx.f a(final com.yelp.android.dg.a parama, long paramLong)
    {
      if (c.isUnsubscribed()) {
        return com.yelp.android.dm.d.b();
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
        return com.yelp.android.dm.d.b();
      }
      com.yelp.android.dm.d.a(new com.yelp.android.dg.a()
      {
        public void call()
        {
          b.remove(parama);
        }
      });
    }
    
    public rx.f a(com.yelp.android.dg.a parama)
    {
      return a(parama, a());
    }
    
    public rx.f a(com.yelp.android.dg.a parama, long paramLong, TimeUnit paramTimeUnit)
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
  
  private static final class b
    implements Comparable<b>
  {
    final com.yelp.android.dg.a a;
    final Long b;
    final int c;
    
    b(com.yelp.android.dg.a parama, Long paramLong, int paramInt)
    {
      a = parama;
      b = paramLong;
      c = paramInt;
    }
    
    public int a(b paramb)
    {
      int j = b.compareTo(b);
      int i = j;
      if (j == 0) {
        i = f.a(c, c);
      }
      return i;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.dl.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */