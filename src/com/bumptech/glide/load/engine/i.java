package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Message;
import com.bumptech.glide.load.b;
import com.bumptech.glide.request.d;
import com.yelp.android.ai.f;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

class i
  implements r
{
  private static final k a = new k();
  private static final Handler b = new Handler(new l(null));
  private final List<d> c = new ArrayList();
  private final k d;
  private final m e;
  private final b f;
  private final ExecutorService g;
  private final ExecutorService h;
  private final boolean i;
  private boolean j;
  private t<?> k;
  private boolean l;
  private Exception m;
  private boolean n;
  private Set<d> o;
  private EngineRunnable p;
  private p<?> q;
  private volatile Future<?> r;
  
  public i(b paramb, ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, boolean paramBoolean, m paramm)
  {
    this(paramb, paramExecutorService1, paramExecutorService2, paramBoolean, paramm, a);
  }
  
  public i(b paramb, ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, boolean paramBoolean, m paramm, k paramk)
  {
    f = paramb;
    g = paramExecutorService1;
    h = paramExecutorService2;
    i = paramBoolean;
    e = paramm;
    d = paramk;
  }
  
  private void b()
  {
    if (j)
    {
      k.d();
      return;
    }
    if (c.isEmpty()) {
      throw new IllegalStateException("Received a resource without any callbacks to notify");
    }
    q = d.a(k, i);
    l = true;
    q.e();
    e.a(f, q);
    Iterator localIterator = c.iterator();
    while (localIterator.hasNext())
    {
      d locald = (d)localIterator.next();
      if (!d(locald))
      {
        q.e();
        locald.a(q);
      }
    }
    q.f();
  }
  
  private void c()
  {
    if (j) {}
    for (;;)
    {
      return;
      if (c.isEmpty()) {
        throw new IllegalStateException("Received an exception without any callbacks to notify");
      }
      n = true;
      e.a(f, null);
      Iterator localIterator = c.iterator();
      while (localIterator.hasNext())
      {
        d locald = (d)localIterator.next();
        if (!d(locald)) {
          locald.a(m);
        }
      }
    }
  }
  
  private void c(d paramd)
  {
    if (o == null) {
      o = new HashSet();
    }
    o.add(paramd);
  }
  
  private boolean d(d paramd)
  {
    return (o != null) && (o.contains(paramd));
  }
  
  void a()
  {
    if ((n) || (l) || (j)) {
      return;
    }
    p.a();
    Future localFuture = r;
    if (localFuture != null) {
      localFuture.cancel(true);
    }
    j = true;
    e.a(this, f);
  }
  
  public void a(EngineRunnable paramEngineRunnable)
  {
    p = paramEngineRunnable;
    r = g.submit(paramEngineRunnable);
  }
  
  public void a(t<?> paramt)
  {
    k = paramt;
    b.obtainMessage(1, this).sendToTarget();
  }
  
  public void a(d paramd)
  {
    
    if (l)
    {
      paramd.a(q);
      return;
    }
    if (n)
    {
      paramd.a(m);
      return;
    }
    c.add(paramd);
  }
  
  public void a(Exception paramException)
  {
    m = paramException;
    b.obtainMessage(2, this).sendToTarget();
  }
  
  public void b(EngineRunnable paramEngineRunnable)
  {
    r = h.submit(paramEngineRunnable);
  }
  
  public void b(d paramd)
  {
    
    if ((l) || (n)) {
      c(paramd);
    }
    do
    {
      return;
      c.remove(paramd);
    } while (!c.isEmpty());
    a();
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */