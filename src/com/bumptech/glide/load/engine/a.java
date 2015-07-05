package com.bumptech.glide.load.engine;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.f;

class a<A, T, Z>
{
  private static final b a = new b();
  private final n b;
  private final int c;
  private final int d;
  private final com.yelp.android.r.c<A> e;
  private final com.yelp.android.ae.b<A, T> f;
  private final f<T> g;
  private final com.yelp.android.ad.c<T, Z> h;
  private final DiskCacheStrategy i;
  private final com.yelp.android.s.a j;
  private final Priority k;
  private final b l;
  private volatile boolean m;
  
  public a(n paramn, int paramInt1, int paramInt2, com.yelp.android.r.c<A> paramc, com.yelp.android.ae.b<A, T> paramb, f<T> paramf, com.yelp.android.ad.c<T, Z> paramc1, com.yelp.android.s.a parama, DiskCacheStrategy paramDiskCacheStrategy, Priority paramPriority)
  {
    this(paramn, paramInt1, paramInt2, paramc, paramb, paramf, paramc1, parama, paramDiskCacheStrategy, paramPriority, a);
  }
  
  a(n paramn, int paramInt1, int paramInt2, com.yelp.android.r.c<A> paramc, com.yelp.android.ae.b<A, T> paramb, f<T> paramf, com.yelp.android.ad.c<T, Z> paramc1, com.yelp.android.s.a parama, DiskCacheStrategy paramDiskCacheStrategy, Priority paramPriority, b paramb1)
  {
    b = paramn;
    c = paramInt1;
    d = paramInt2;
    e = paramc;
    f = paramb;
    g = paramf;
    h = paramc1;
    i = paramDiskCacheStrategy;
    j = parama;
    k = paramPriority;
    l = paramb1;
  }
  
  private t<T> a(com.bumptech.glide.load.b paramb)
  {
    Object localObject1 = null;
    Object localObject3 = j.a(paramb);
    if (localObject3 == null) {}
    for (;;)
    {
      return (t<T>)localObject1;
      try
      {
        localObject3 = f.a().a(localObject3, c, d);
        localObject1 = localObject3;
        if (localObject3 != null) {
          continue;
        }
        j.b(paramb);
        return (t<T>)localObject3;
      }
      finally
      {
        if (0 == 0) {
          j.b(paramb);
        }
      }
    }
  }
  
  private t<Z> a(t<T> paramt)
  {
    long l1 = com.yelp.android.ai.c.a();
    paramt = c(paramt);
    if (Log.isLoggable("DecodeJob", 2)) {
      a("Transformed resource from source", l1);
    }
    b(paramt);
    l1 = com.yelp.android.ai.c.a();
    paramt = d(paramt);
    if (Log.isLoggable("DecodeJob", 2)) {
      a("Transcoded transformed from source", l1);
    }
    return paramt;
  }
  
  private t<T> a(A paramA)
  {
    if (i.cacheSource()) {
      paramA = b(paramA);
    }
    long l1;
    t localt;
    do
    {
      return paramA;
      l1 = com.yelp.android.ai.c.a();
      localt = f.b().a(paramA, c, d);
      paramA = localt;
    } while (!Log.isLoggable("DecodeJob", 2));
    a("Decoded from source", l1);
    return localt;
  }
  
  private void a(String paramString, long paramLong)
  {
    Log.v("DecodeJob", paramString + " in " + com.yelp.android.ai.c.a(paramLong) + b);
  }
  
  private t<T> b(A paramA)
  {
    long l1 = com.yelp.android.ai.c.a();
    paramA = new c(this, f.c(), paramA);
    j.a(b.a(), paramA);
    if (Log.isLoggable("DecodeJob", 2)) {
      a("Wrote source to cache", l1);
    }
    l1 = com.yelp.android.ai.c.a();
    paramA = a(b.a());
    if ((Log.isLoggable("DecodeJob", 2)) && (paramA != null)) {
      a("Decoded source from cache", l1);
    }
    return paramA;
  }
  
  private void b(t<T> paramt)
  {
    if ((paramt == null) || (!i.cacheResult())) {}
    long l1;
    do
    {
      return;
      l1 = com.yelp.android.ai.c.a();
      paramt = new c(this, f.d(), paramt);
      j.a(b, paramt);
    } while (!Log.isLoggable("DecodeJob", 2));
    a("Wrote transformed from source to cache", l1);
  }
  
  private t<T> c(t<T> paramt)
  {
    Object localObject;
    if (paramt == null) {
      localObject = null;
    }
    t localt;
    do
    {
      return (t<T>)localObject;
      localt = g.a(paramt, c, d);
      localObject = localt;
    } while (paramt.equals(localt));
    paramt.d();
    return localt;
  }
  
  private t<Z> d(t<T> paramt)
  {
    if (paramt == null) {
      return null;
    }
    return h.a(paramt);
  }
  
  private t<T> e()
  {
    try
    {
      long l1 = com.yelp.android.ai.c.a();
      Object localObject1 = e.a(k);
      if (Log.isLoggable("DecodeJob", 2)) {
        a("Fetched data", l1);
      }
      boolean bool = m;
      if (bool) {
        return null;
      }
      localObject1 = a(localObject1);
      return (t<T>)localObject1;
    }
    finally
    {
      e.a();
    }
  }
  
  public t<Z> a()
  {
    Object localObject;
    if (!i.cacheResult()) {
      localObject = null;
    }
    long l1;
    t localt;
    do
    {
      return (t<Z>)localObject;
      l1 = com.yelp.android.ai.c.a();
      localObject = a(b);
      if (Log.isLoggable("DecodeJob", 2)) {
        a("Decoded transformed from cache", l1);
      }
      l1 = com.yelp.android.ai.c.a();
      localt = d((t)localObject);
      localObject = localt;
    } while (!Log.isLoggable("DecodeJob", 2));
    a("Transcoded transformed from cache", l1);
    return localt;
  }
  
  public t<Z> b()
  {
    if (!i.cacheSource()) {
      return null;
    }
    long l1 = com.yelp.android.ai.c.a();
    t localt = a(b.a());
    if (Log.isLoggable("DecodeJob", 2)) {
      a("Decoded source from cache", l1);
    }
    return a(localt);
  }
  
  public t<Z> c()
  {
    return a(e());
  }
  
  public void d()
  {
    e.c();
    m = true;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */