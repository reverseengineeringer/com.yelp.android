package com.yelp.android.dl;

import com.yelp.android.dg.a;
import com.yelp.android.dm.b;
import com.yelp.android.dm.d;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import rx.d.a;
import rx.f;
import rx.internal.schedulers.ScheduledAction;

final class a$b
  extends d.a
{
  static final AtomicIntegerFieldUpdater<b> b = AtomicIntegerFieldUpdater.newUpdater(b.class, "a");
  volatile int a;
  private final b c = new b();
  private final a.a d;
  private final a.c e;
  
  a$b(a.a parama)
  {
    d = parama;
    e = parama.a();
  }
  
  public f a(a parama)
  {
    return a(parama, 0L, null);
  }
  
  public f a(a parama, long paramLong, TimeUnit paramTimeUnit)
  {
    if (c.isUnsubscribed()) {
      return d.b();
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

/* Location:
 * Qualified Name:     com.yelp.android.dl.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */