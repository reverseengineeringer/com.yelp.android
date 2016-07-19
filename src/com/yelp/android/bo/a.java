package com.yelp.android.bo;

import com.path.android.jobqueue.Job;
import com.yelp.android.bp.b;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class a
{
  private int a;
  private int b;
  private int c;
  private final ThreadGroup d;
  private final a e;
  private final int f;
  private final AtomicInteger g = new AtomicInteger(0);
  private final ConcurrentHashMap<String, com.path.android.jobqueue.a> h;
  
  public a(com.yelp.android.bm.a parama, a parama1)
  {
    c = parama.i();
    a = parama.f();
    b = parama.g();
    f = parama.d();
    e = parama1;
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
  
  private void a(com.path.android.jobqueue.a parama)
  {
    synchronized (h)
    {
      h.put(c(parama), parama);
      return;
    }
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
          if (b.a()) {
            b.a("%s: load factor check. %s = (%d < %d)|| (%d * %d < %d + %d). consumer thread: %s", new Object[] { Thread.currentThread().getName(), Boolean.valueOf(bool), Integer.valueOf(i), Integer.valueOf(b), Integer.valueOf(i), Integer.valueOf(c), Integer.valueOf(e.b()), Integer.valueOf(h.size()), Boolean.valueOf(paramBoolean) });
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
  
  private void b(com.path.android.jobqueue.a parama)
  {
    synchronized (h)
    {
      h.remove(c(parama));
      h.notifyAll();
      return;
    }
  }
  
  private boolean b()
  {
    return !a(true, false);
  }
  
  private String c(com.path.android.jobqueue.a parama)
  {
    return a(parama.a().longValue(), parama.h().isPersistent());
  }
  
  private void c()
  {
    b.a("adding another consumer", new Object[0]);
    synchronized (d)
    {
      Thread localThread = new Thread(d, new b(e, this));
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
  
  public static abstract interface a
  {
    public abstract com.path.android.jobqueue.a a(int paramInt, TimeUnit paramTimeUnit);
    
    public abstract void a(com.path.android.jobqueue.a parama);
    
    public abstract boolean a();
    
    public abstract int b();
    
    public abstract void b(com.path.android.jobqueue.a parama);
  }
  
  private static class b
    implements Runnable
  {
    private final a.a a;
    private final a b;
    private boolean c = false;
    
    public b(a.a parama, a parama1)
    {
      b = parama1;
      a = parama;
    }
    
    public void run()
    {
      for (;;)
      {
        try
        {
          com.path.android.jobqueue.a locala1;
          if (b.a())
          {
            if (!c)
            {
              b.a("starting consumer %s", new Object[] { Thread.currentThread().getName() });
              c = true;
            }
          }
          else
          {
            if (!a.a()) {
              break label233;
            }
            locala1 = a.a(a.a(b), TimeUnit.SECONDS);
            if (locala1 != null) {
              a.a(b, locala1);
            }
          }
          switch (locala1.a(locala1.d()))
          {
          case 1: 
            a.b(b, locala1);
            if (locala1 != null) {
              continue;
            }
            boolean bool = a.b(b);
            if (b.a())
            {
              if (!bool) {
                break label293;
              }
              b.a("finishing consumer %s", new Object[] { Thread.currentThread().getName() });
            }
            if (!bool) {
              continue;
            }
            return;
            b.a("re-running consumer %s", new Object[] { Thread.currentThread().getName() });
            continue;
            locala2 = null;
          }
        }
        finally
        {
          bool = a.b(b);
          if (b.a())
          {
            if (!bool) {
              break label314;
            }
            b.a("finishing consumer %s", new Object[] { Thread.currentThread().getName() });
          }
        }
        label233:
        com.path.android.jobqueue.a locala2;
        continue;
        locala2.m();
        a.b(locala2);
        continue;
        a.b(locala2);
        continue;
        a.a(locala2);
        continue;
        b.a("running job failed and cancelled, doing nothing. Will be removed after it's onCancel is called by the JobManager", new Object[0]);
        continue;
        label293:
        b.a("didn't allow me to die, re-running %s", new Object[] { Thread.currentThread().getName() });
        continue;
        label314:
        b.a("didn't allow me to die, re-running %s", new Object[] { Thread.currentThread().getName() });
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.bo.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */