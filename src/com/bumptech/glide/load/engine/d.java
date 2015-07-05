package com.bumptech.glide.load.engine;

import android.os.Looper;
import android.os.MessageQueue;
import android.util.Log;
import com.bumptech.glide.Priority;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public class d
  implements m, q, com.yelp.android.s.g
{
  private final Map<com.bumptech.glide.load.b, i> a;
  private final o b;
  private final com.yelp.android.s.f c;
  private final com.yelp.android.s.a d;
  private final e e;
  private final Map<com.bumptech.glide.load.b, WeakReference<p<?>>> f;
  private final ReferenceQueue<p<?>> g;
  private final u h;
  
  public d(com.yelp.android.s.f paramf, com.yelp.android.s.a parama, ExecutorService paramExecutorService1, ExecutorService paramExecutorService2)
  {
    this(paramf, parama, paramExecutorService1, paramExecutorService2, null, null, null, null, null);
  }
  
  d(com.yelp.android.s.f paramf, com.yelp.android.s.a parama, ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, Map<com.bumptech.glide.load.b, i> paramMap, o paramo, Map<com.bumptech.glide.load.b, WeakReference<p<?>>> paramMap1, e parame, u paramu)
  {
    c = paramf;
    d = parama;
    parama = paramMap1;
    if (paramMap1 == null) {
      parama = new HashMap();
    }
    f = parama;
    paramMap1 = paramo;
    if (paramo == null) {
      paramMap1 = new o();
    }
    b = paramMap1;
    paramo = paramMap;
    if (paramMap == null) {
      paramo = new HashMap();
    }
    a = paramo;
    paramMap = parame;
    if (parame == null) {
      paramMap = new e(paramExecutorService1, paramExecutorService2, this);
    }
    e = paramMap;
    paramExecutorService1 = paramu;
    if (paramu == null) {
      paramExecutorService1 = new u();
    }
    h = paramExecutorService1;
    g = new ReferenceQueue();
    Looper.myQueue().addIdleHandler(new g(parama, g));
    paramf.a(this);
  }
  
  private p<?> a(com.bumptech.glide.load.b paramb)
  {
    paramb = c.a(paramb);
    if (paramb == null) {
      return null;
    }
    if ((paramb instanceof p)) {
      return (p)paramb;
    }
    return new p(paramb, true);
  }
  
  private static void a(String paramString, long paramLong, com.bumptech.glide.load.b paramb)
  {
    Log.v("Engine", paramString + " in " + com.yelp.android.ai.c.a(paramLong) + "ms, key: " + paramb);
  }
  
  public <T, Z, R> f a(com.bumptech.glide.load.b paramb, int paramInt1, int paramInt2, com.yelp.android.r.c<T> paramc, com.yelp.android.ae.b<T, Z> paramb1, com.bumptech.glide.load.f<Z> paramf, com.yelp.android.ad.c<Z, R> paramc1, Priority paramPriority, boolean paramBoolean, DiskCacheStrategy paramDiskCacheStrategy, com.bumptech.glide.request.d paramd)
  {
    com.yelp.android.ai.f.a();
    long l = com.yelp.android.ai.c.a();
    Object localObject = paramc.b();
    paramb = b.a((String)localObject, paramb, paramInt1, paramInt2, paramb1.a(), paramb1.b(), paramf, paramb1.d(), paramc1, paramb1.c());
    localObject = a(paramb);
    if (localObject != null)
    {
      ((p)localObject).e();
      f.put(paramb, new h(paramb, (p)localObject, g));
      paramd.a((t)localObject);
      if (Log.isLoggable("Engine", 2)) {
        a("Loaded resource from cache", l, paramb);
      }
      return null;
    }
    localObject = (WeakReference)f.get(paramb);
    if (localObject != null)
    {
      localObject = (p)((WeakReference)localObject).get();
      if (localObject != null)
      {
        ((p)localObject).e();
        paramd.a((t)localObject);
        if (Log.isLoggable("Engine", 2)) {
          a("Loaded resource from active resources", l, paramb);
        }
        return null;
      }
      f.remove(paramb);
    }
    localObject = (i)a.get(paramb);
    if (localObject != null)
    {
      ((i)localObject).a(paramd);
      if (Log.isLoggable("Engine", 2)) {
        a("Added to existing load", l, paramb);
      }
      return new f(paramd, (i)localObject);
    }
    localObject = e.a(paramb, paramBoolean);
    paramc = new EngineRunnable((r)localObject, new a(paramb, paramInt1, paramInt2, paramc, paramb1, paramf, paramc1, d, paramDiskCacheStrategy, paramPriority), paramPriority);
    a.put(paramb, localObject);
    ((i)localObject).a(paramd);
    ((i)localObject).a(paramc);
    if (Log.isLoggable("Engine", 2)) {
      a("Started new load", l, paramb);
    }
    return new f(paramd, (i)localObject);
  }
  
  public void a(com.bumptech.glide.load.b paramb, p<?> paramp)
  {
    if (paramp != null)
    {
      paramp.a(paramb, this);
      f.put(paramb, new h(paramb, paramp, g));
    }
    a.remove(paramb);
  }
  
  public void a(i parami, com.bumptech.glide.load.b paramb)
  {
    if (parami.equals((i)a.get(paramb))) {
      a.remove(paramb);
    }
  }
  
  public void a(t paramt)
  {
    if ((paramt instanceof p))
    {
      ((p)paramt).f();
      return;
    }
    throw new IllegalArgumentException("Cannot release anything but an EngineResource");
  }
  
  public void b(com.bumptech.glide.load.b paramb, p paramp)
  {
    f.remove(paramb);
    if (paramp.a())
    {
      c.b(paramb, paramp);
      return;
    }
    h.a(paramp);
  }
  
  public void b(t<?> paramt)
  {
    h.a(paramt);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */