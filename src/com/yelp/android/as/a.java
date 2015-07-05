package com.yelp.android.as;

import com.path.android.jobqueue.BaseJob;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.atomic.AtomicInteger;

public class a
{
  private int a;
  private int b;
  private int c;
  private final ThreadGroup d;
  private final b e;
  private final int f;
  private final AtomicInteger g = new AtomicInteger(0);
  private final ConcurrentHashMap<String, com.path.android.jobqueue.b> h;
  
  public a(com.yelp.android.aq.a parama, b paramb)
  {
    c = parama.i();
    a = parama.f();
    b = parama.g();
    f = parama.d();
    e = paramb;
    d = new ThreadGroup("JobConsumers");
    h = new ConcurrentHashMap();
  }
  
  private String a(long paramLong, boolean paramBoolean)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(paramLong).append("_");
    if (paramBoolean) {}
    for (String str = "t";; str = "f") {
      return str;
    }
  }
  
  private void a(com.path.android.jobqueue.b paramb)
  {
    h.put(c(paramb), paramb);
  }
  
  private boolean a(boolean paramBoolean)
  {
    boolean bool = false;
    for (;;)
    {
      synchronized (d)
      {
        int j = g.intValue();
        if (!paramBoolean) {
          break label192;
        }
        i = 1;
        i = j - i;
        if ((i >= b) && (c * i >= e.b() + h.size()))
        {
          if (com.yelp.android.at.b.a()) {
            com.yelp.android.at.b.a("%s: load factor check. %s = (%d < %d)|| (%d * %d < %d + %d). consumer thread: %s", new Object[] { Thread.currentThread().getName(), Boolean.valueOf(bool), Integer.valueOf(i), Integer.valueOf(b), Integer.valueOf(i), Integer.valueOf(c), Integer.valueOf(e.b()), Integer.valueOf(h.size()), Boolean.valueOf(paramBoolean) });
          }
          return bool;
        }
      }
      bool = true;
      continue;
      label192:
      int i = 0;
    }
  }
  
  private boolean a(boolean paramBoolean1, boolean paramBoolean2)
  {
    if (!e.a()) {
      if (paramBoolean1) {
        g.decrementAndGet();
      }
    }
    do
    {
      return false;
      synchronized (d)
      {
        if ((a(paramBoolean1)) && (d()))
        {
          if (paramBoolean2) {
            c();
          }
          return true;
        }
      }
    } while (!paramBoolean1);
    g.decrementAndGet();
    return false;
  }
  
  private void b(com.path.android.jobqueue.b paramb)
  {
    h.remove(c(paramb));
  }
  
  private boolean b()
  {
    return !a(true, false);
  }
  
  private String c(com.path.android.jobqueue.b paramb)
  {
    return a(paramb.a().longValue(), paramb.h().isPersistent());
  }
  
  private void c()
  {
    com.yelp.android.at.b.a("adding another consumer", new Object[0]);
    synchronized (d)
    {
      Thread localThread = new Thread(d, new c(e, this));
      g.incrementAndGet();
      localThread.start();
      return;
    }
  }
  
  private boolean d()
  {
    for (;;)
    {
      synchronized (d)
      {
        if (g.intValue() < a)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public void a()
  {
    a(false, true);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.as.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */