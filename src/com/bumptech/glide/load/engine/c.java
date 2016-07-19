package com.bumptech.glide.load.engine;

import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import com.bumptech.glide.load.b;
import com.bumptech.glide.request.f;
import com.yelp.android.ao.h;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;

class c
  implements EngineRunnable.a
{
  private static final a a = new a();
  private static final Handler b = new Handler(Looper.getMainLooper(), new b(null));
  private final List<f> c = new ArrayList();
  private final a d;
  private final d e;
  private final b f;
  private final ExecutorService g;
  private final ExecutorService h;
  private final boolean i;
  private boolean j;
  private i<?> k;
  private boolean l;
  private Exception m;
  private boolean n;
  private Set<f> o;
  private EngineRunnable p;
  private g<?> q;
  private volatile Future<?> r;
  
  public c(b paramb, ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, boolean paramBoolean, d paramd)
  {
    this(paramb, paramExecutorService1, paramExecutorService2, paramBoolean, paramd, a);
  }
  
  public c(b paramb, ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, boolean paramBoolean, d paramd, a parama)
  {
    f = paramb;
    g = paramExecutorService1;
    h = paramExecutorService2;
    i = paramBoolean;
    e = paramd;
    d = parama;
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
      f localf = (f)localIterator.next();
      if (!d(localf))
      {
        q.e();
        localf.a(q);
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
        f localf = (f)localIterator.next();
        if (!d(localf)) {
          localf.a(m);
        }
      }
    }
  }
  
  private void c(f paramf)
  {
    if (o == null) {
      o = new HashSet();
    }
    o.add(paramf);
  }
  
  private boolean d(f paramf)
  {
    return (o != null) && (o.contains(paramf));
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
  
  public void a(i<?> parami)
  {
    k = parami;
    b.obtainMessage(1, this).sendToTarget();
  }
  
  public void a(f paramf)
  {
    
    if (l)
    {
      paramf.a(q);
      return;
    }
    if (n)
    {
      paramf.a(m);
      return;
    }
    c.add(paramf);
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
  
  public void b(f paramf)
  {
    
    if ((l) || (n)) {
      c(paramf);
    }
    do
    {
      return;
      c.remove(paramf);
    } while (!c.isEmpty());
    a();
  }
  
  static class a
  {
    public <R> g<R> a(i<R> parami, boolean paramBoolean)
    {
      return new g(parami, paramBoolean);
    }
  }
  
  private static class b
    implements Handler.Callback
  {
    public boolean handleMessage(Message paramMessage)
    {
      if ((1 == what) || (2 == what))
      {
        c localc = (c)obj;
        if (1 == what) {
          c.a(localc);
        }
        for (;;)
        {
          return true;
          c.b(localc);
        }
      }
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */