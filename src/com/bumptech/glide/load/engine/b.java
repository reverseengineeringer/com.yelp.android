package com.bumptech.glide.load.engine;

import android.os.Looper;
import android.os.MessageQueue;
import android.os.MessageQueue.IdleHandler;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.yelp.android.y.h.a;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.ExecutorService;

public class b
  implements d, g.a, h.a
{
  private final Map<com.bumptech.glide.load.b, c> a;
  private final f b;
  private final com.yelp.android.y.h c;
  private final a d;
  private final Map<com.bumptech.glide.load.b, WeakReference<g<?>>> e;
  private final j f;
  private final b g;
  private ReferenceQueue<g<?>> h;
  
  public b(com.yelp.android.y.h paramh, com.yelp.android.y.a.a parama, ExecutorService paramExecutorService1, ExecutorService paramExecutorService2)
  {
    this(paramh, parama, paramExecutorService1, paramExecutorService2, null, null, null, null, null);
  }
  
  b(com.yelp.android.y.h paramh, com.yelp.android.y.a.a parama, ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, Map<com.bumptech.glide.load.b, c> paramMap, f paramf, Map<com.bumptech.glide.load.b, WeakReference<g<?>>> paramMap1, a parama1, j paramj)
  {
    c = paramh;
    g = new b(parama);
    parama = paramMap1;
    if (paramMap1 == null) {
      parama = new HashMap();
    }
    e = parama;
    parama = paramf;
    if (paramf == null) {
      parama = new f();
    }
    b = parama;
    parama = paramMap;
    if (paramMap == null) {
      parama = new HashMap();
    }
    a = parama;
    parama = parama1;
    if (parama1 == null) {
      parama = new a(paramExecutorService1, paramExecutorService2, this);
    }
    d = parama;
    parama = paramj;
    if (paramj == null) {
      parama = new j();
    }
    f = parama;
    paramh.a(this);
  }
  
  private g<?> a(com.bumptech.glide.load.b paramb)
  {
    paramb = c.a(paramb);
    if (paramb == null) {
      return null;
    }
    if ((paramb instanceof g)) {
      return (g)paramb;
    }
    return new g(paramb, true);
  }
  
  private g<?> a(com.bumptech.glide.load.b paramb, boolean paramBoolean)
  {
    if (!paramBoolean) {
      return null;
    }
    Object localObject = (WeakReference)e.get(paramb);
    if (localObject != null)
    {
      localObject = (g)((WeakReference)localObject).get();
      if (localObject != null)
      {
        ((g)localObject).e();
        paramb = (com.bumptech.glide.load.b)localObject;
      }
    }
    for (;;)
    {
      return paramb;
      e.remove(paramb);
      paramb = (com.bumptech.glide.load.b)localObject;
      continue;
      paramb = null;
    }
  }
  
  private ReferenceQueue<g<?>> a()
  {
    if (h == null)
    {
      h = new ReferenceQueue();
      Looper.myQueue().addIdleHandler(new d(e, h));
    }
    return h;
  }
  
  private static void a(String paramString, long paramLong, com.bumptech.glide.load.b paramb)
  {
    Log.v("Engine", paramString + " in " + com.yelp.android.ao.d.a(paramLong) + "ms, key: " + paramb);
  }
  
  private g<?> b(com.bumptech.glide.load.b paramb, boolean paramBoolean)
  {
    Object localObject;
    if (!paramBoolean) {
      localObject = null;
    }
    g localg;
    do
    {
      return (g<?>)localObject;
      localg = a(paramb);
      localObject = localg;
    } while (localg == null);
    localg.e();
    e.put(paramb, new e(paramb, localg, a()));
    return localg;
  }
  
  public <T, Z, R> c a(com.bumptech.glide.load.b paramb, int paramInt1, int paramInt2, com.yelp.android.w.c<T> paramc, com.yelp.android.ak.b<T, Z> paramb1, com.bumptech.glide.load.f<Z> paramf, com.yelp.android.ai.c<Z, R> paramc1, Priority paramPriority, boolean paramBoolean, DiskCacheStrategy paramDiskCacheStrategy, com.bumptech.glide.request.f paramf1)
  {
    com.yelp.android.ao.h.a();
    long l = com.yelp.android.ao.d.a();
    Object localObject = paramc.b();
    paramb = b.a((String)localObject, paramb, paramInt1, paramInt2, paramb1.a(), paramb1.b(), paramf, paramb1.d(), paramc1, paramb1.c());
    localObject = b(paramb, paramBoolean);
    if (localObject != null)
    {
      paramf1.a((i)localObject);
      if (Log.isLoggable("Engine", 2)) {
        a("Loaded resource from cache", l, paramb);
      }
      return null;
    }
    localObject = a(paramb, paramBoolean);
    if (localObject != null)
    {
      paramf1.a((i)localObject);
      if (Log.isLoggable("Engine", 2)) {
        a("Loaded resource from active resources", l, paramb);
      }
      return null;
    }
    localObject = (c)a.get(paramb);
    if (localObject != null)
    {
      ((c)localObject).a(paramf1);
      if (Log.isLoggable("Engine", 2)) {
        a("Added to existing load", l, paramb);
      }
      return new c(paramf1, (c)localObject);
    }
    localObject = d.a(paramb, paramBoolean);
    paramc = new EngineRunnable((EngineRunnable.a)localObject, new a(paramb, paramInt1, paramInt2, paramc, paramb1, paramf, paramc1, g, paramDiskCacheStrategy, paramPriority), paramPriority);
    a.put(paramb, localObject);
    ((c)localObject).a(paramf1);
    ((c)localObject).a(paramc);
    if (Log.isLoggable("Engine", 2)) {
      a("Started new load", l, paramb);
    }
    return new c(paramf1, (c)localObject);
  }
  
  public void a(com.bumptech.glide.load.b paramb, g<?> paramg)
  {
    
    if (paramg != null)
    {
      paramg.a(paramb, this);
      if (paramg.a()) {
        e.put(paramb, new e(paramb, paramg, a()));
      }
    }
    a.remove(paramb);
  }
  
  public void a(c paramc, com.bumptech.glide.load.b paramb)
  {
    
    if (paramc.equals((c)a.get(paramb))) {
      a.remove(paramb);
    }
  }
  
  public void a(i parami)
  {
    
    if ((parami instanceof g))
    {
      ((g)parami).f();
      return;
    }
    throw new IllegalArgumentException("Cannot release anything but an EngineResource");
  }
  
  public void b(com.bumptech.glide.load.b paramb, g paramg)
  {
    com.yelp.android.ao.h.a();
    e.remove(paramb);
    if (paramg.a())
    {
      c.b(paramb, paramg);
      return;
    }
    f.a(paramg);
  }
  
  public void b(i<?> parami)
  {
    com.yelp.android.ao.h.a();
    f.a(parami);
  }
  
  static class a
  {
    private final ExecutorService a;
    private final ExecutorService b;
    private final d c;
    
    public a(ExecutorService paramExecutorService1, ExecutorService paramExecutorService2, d paramd)
    {
      a = paramExecutorService1;
      b = paramExecutorService2;
      c = paramd;
    }
    
    public c a(com.bumptech.glide.load.b paramb, boolean paramBoolean)
    {
      return new c(paramb, a, b, paramBoolean, c);
    }
  }
  
  private static class b
    implements a.a
  {
    private final com.yelp.android.y.a.a a;
    private volatile com.yelp.android.y.a b;
    
    public b(com.yelp.android.y.a.a parama)
    {
      a = parama;
    }
    
    public com.yelp.android.y.a a()
    {
      if (b == null) {}
      try
      {
        if (b == null) {
          b = a.a();
        }
        if (b == null) {
          b = new com.yelp.android.y.b();
        }
        return b;
      }
      finally {}
    }
  }
  
  public static class c
  {
    private final c a;
    private final com.bumptech.glide.request.f b;
    
    public c(com.bumptech.glide.request.f paramf, c paramc)
    {
      b = paramf;
      a = paramc;
    }
    
    public void a()
    {
      a.b(b);
    }
  }
  
  private static class d
    implements MessageQueue.IdleHandler
  {
    private final Map<com.bumptech.glide.load.b, WeakReference<g<?>>> a;
    private final ReferenceQueue<g<?>> b;
    
    public d(Map<com.bumptech.glide.load.b, WeakReference<g<?>>> paramMap, ReferenceQueue<g<?>> paramReferenceQueue)
    {
      a = paramMap;
      b = paramReferenceQueue;
    }
    
    public boolean queueIdle()
    {
      b.e locale = (b.e)b.poll();
      if (locale != null) {
        a.remove(b.e.a(locale));
      }
      return true;
    }
  }
  
  private static class e
    extends WeakReference<g<?>>
  {
    private final com.bumptech.glide.load.b a;
    
    public e(com.bumptech.glide.load.b paramb, g<?> paramg, ReferenceQueue<? super g<?>> paramReferenceQueue)
    {
      super(paramReferenceQueue);
      a = paramb;
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */