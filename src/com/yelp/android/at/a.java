package com.yelp.android.at;

import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;

public class a
{
  com.comscore.analytics.a a;
  private b b;
  private BlockingQueue<c> c;
  
  public a(com.comscore.analytics.a parama)
  {
    a = parama;
    c = new LinkedBlockingQueue();
    b = new b(this);
    b.start();
  }
  
  long a()
  {
    Iterator localIterator = c.iterator();
    for (long l = 50000L; localIterator.hasNext(); l = Math.min(l, ((c)localIterator.next()).a())) {}
    return l;
  }
  
  void a(c paramc)
  {
    c.remove(paramc);
  }
  
  public boolean a(Runnable paramRunnable)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if ((localc.e() == paramRunnable) || (((paramRunnable instanceof c)) && (localc == paramRunnable))) {
        return true;
      }
    }
    return false;
  }
  
  public boolean a(Runnable paramRunnable, long paramLong)
  {
    return a(paramRunnable, paramLong, false, 0L);
  }
  
  public boolean a(Runnable paramRunnable, long paramLong1, boolean paramBoolean, long paramLong2)
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if ((localc != null) && (localc.e() == paramRunnable)) {
        return false;
      }
    }
    c.add(new c(paramRunnable, a, paramLong1, paramBoolean, paramLong2));
    b.b();
    return true;
  }
  
  public boolean a(Runnable paramRunnable, boolean paramBoolean)
  {
    if (!a.ao()) {
      return false;
    }
    if (!paramBoolean) {
      try
      {
        paramRunnable.run();
        return true;
      }
      catch (Exception paramRunnable)
      {
        com.comscore.utils.c.b(getClass(), "Unexpected error: ");
        com.comscore.utils.c.a(paramRunnable);
        return true;
      }
    }
    a(paramRunnable, 0L);
    return true;
  }
  
  c b()
  {
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      c localc = (c)localIterator.next();
      if (localc.b() <= System.currentTimeMillis()) {
        return localc;
      }
    }
    return null;
  }
  
  public void b(Runnable paramRunnable)
  {
    if (paramRunnable == null) {}
    c localc;
    do
    {
      return;
      Iterator localIterator;
      while (!localIterator.hasNext()) {
        localIterator = c.iterator();
      }
      localc = (c)localIterator.next();
    } while (localc.e() != paramRunnable);
    c.remove(localc);
  }
  
  public void c()
  {
    c.clear();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.at.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */