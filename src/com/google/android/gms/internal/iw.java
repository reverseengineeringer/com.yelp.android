package com.google.android.gms.internal;

import android.os.Handler;
import android.os.Looper;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.Set;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

public class iw
{
  private AtomicInteger a = new AtomicInteger();
  private final Map<String, Queue<zzk<?>>> b = new HashMap();
  private final Set<zzk<?>> c = new HashSet();
  private final PriorityBlockingQueue<zzk<?>> d = new PriorityBlockingQueue();
  private final PriorityBlockingQueue<zzk<?>> e = new PriorityBlockingQueue();
  private final u f;
  private final dv g;
  private final ka h;
  private ev[] i;
  private av j;
  private List<a> k = new ArrayList();
  
  public iw(u paramu, dv paramdv)
  {
    this(paramu, paramdv, 4);
  }
  
  public iw(u paramu, dv paramdv, int paramInt)
  {
    this(paramu, paramdv, paramInt, new cu(new Handler(Looper.getMainLooper())));
  }
  
  public iw(u paramu, dv paramdv, int paramInt, ka paramka)
  {
    f = paramu;
    g = paramdv;
    i = new ev[paramInt];
    h = paramka;
  }
  
  public <T> zzk<T> a(zzk<T> paramzzk)
  {
    paramzzk.a(this);
    synchronized (c)
    {
      c.add(paramzzk);
      paramzzk.a(c());
      paramzzk.b("add-to-queue");
      if (!paramzzk.p())
      {
        e.add(paramzzk);
        return paramzzk;
      }
    }
    for (;;)
    {
      String str;
      synchronized (b)
      {
        str = paramzzk.e();
        if (b.containsKey(str))
        {
          Queue localQueue = (Queue)b.get(str);
          ??? = localQueue;
          if (localQueue == null) {
            ??? = new LinkedList();
          }
          ((Queue)???).add(paramzzk);
          b.put(str, ???);
          if (li.b) {
            li.a("Request for cacheKey=%s is in flight, putting on hold.", new Object[] { str });
          }
          return paramzzk;
        }
      }
      b.put(str, null);
      d.add(paramzzk);
    }
  }
  
  public void a()
  {
    b();
    j = new av(d, e, f, h);
    j.start();
    int m = 0;
    while (m < i.length)
    {
      ev localev = new ev(e, g, f, h);
      i[m] = localev;
      localev.start();
      m += 1;
    }
  }
  
  public void b()
  {
    if (j != null) {
      j.a();
    }
    int m = 0;
    while (m < i.length)
    {
      if (i[m] != null) {
        i[m].a();
      }
      m += 1;
    }
  }
  
  <T> void b(zzk<T> paramzzk)
  {
    Object localObject2;
    synchronized (c)
    {
      c.remove(paramzzk);
      synchronized (k)
      {
        localObject2 = k.iterator();
        if (((Iterator)localObject2).hasNext()) {
          ((a)((Iterator)localObject2).next()).a(paramzzk);
        }
      }
    }
    if (paramzzk.p()) {
      synchronized (b)
      {
        paramzzk = paramzzk.e();
        localObject2 = (Queue)b.remove(paramzzk);
        if (localObject2 != null)
        {
          if (li.b) {
            li.a("Releasing %d waiting requests for cacheKey=%s.", new Object[] { Integer.valueOf(((Queue)localObject2).size()), paramzzk });
          }
          d.addAll((Collection)localObject2);
        }
        return;
      }
    }
  }
  
  public int c()
  {
    return a.incrementAndGet();
  }
  
  public static abstract interface a<T>
  {
    public abstract void a(zzk<T> paramzzk);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.iw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */