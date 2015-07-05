package com.bumptech.glide.request;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.t;
import com.yelp.android.af.e;
import com.yelp.android.af.g;
import com.yelp.android.ag.h;
import com.yelp.android.ag.j;
import com.yelp.android.v.m;
import java.util.Queue;

public final class GenericRequest<A, T, Z, R>
  implements a, d, h
{
  private static final Queue<GenericRequest<?, ?, ?, ?>> a = com.yelp.android.ai.f.a(0);
  private long A;
  private GenericRequest.Status B;
  private final String b = String.valueOf(hashCode());
  private com.bumptech.glide.load.b c;
  private int d;
  private int e;
  private Context f;
  private com.bumptech.glide.load.f<Z> g;
  private com.yelp.android.ae.f<A, T, Z, R> h;
  private b i;
  private A j;
  private Class<R> k;
  private boolean l;
  private Priority m;
  private j<R> n;
  private c<? super A, R> o;
  private float p;
  private com.bumptech.glide.load.engine.d q;
  private g<R> r;
  private int s;
  private int t;
  private DiskCacheStrategy u;
  private Drawable v;
  private Drawable w;
  private boolean x;
  private t<?> y;
  private com.bumptech.glide.load.engine.f z;
  
  public static <A, T, Z, R> GenericRequest<A, T, Z, R> a(com.yelp.android.ae.f<A, T, Z, R> paramf, A paramA, com.bumptech.glide.load.b paramb, Context paramContext, Priority paramPriority, j<R> paramj, float paramFloat, Drawable paramDrawable1, int paramInt1, Drawable paramDrawable2, int paramInt2, c<? super A, R> paramc, b paramb1, com.bumptech.glide.load.engine.d paramd, com.bumptech.glide.load.f<Z> paramf1, Class<R> paramClass, boolean paramBoolean, g<R> paramg, int paramInt3, int paramInt4, DiskCacheStrategy paramDiskCacheStrategy)
  {
    GenericRequest localGenericRequest2 = (GenericRequest)a.poll();
    GenericRequest localGenericRequest1 = localGenericRequest2;
    if (localGenericRequest2 == null) {
      localGenericRequest1 = new GenericRequest();
    }
    localGenericRequest1.b(paramf, paramA, paramb, paramContext, paramPriority, paramj, paramFloat, paramDrawable1, paramInt1, paramDrawable2, paramInt2, paramc, paramb1, paramd, paramf1, paramClass, paramBoolean, paramg, paramInt3, paramInt4, paramDiskCacheStrategy);
    return localGenericRequest1;
  }
  
  private void a(t<?> paramt, R paramR)
  {
    if ((o == null) || (!o.onResourceReady(paramR, j, n, x, o())))
    {
      e locale = r.a(x, o());
      n.a(paramR, locale);
    }
    B = GenericRequest.Status.COMPLETE;
    y = paramt;
    if (Log.isLoggable("GenericRequest", 2)) {
      a("Resource ready in " + com.yelp.android.ai.c.a(A) + " size: " + paramt.c() * 9.5367431640625E-7D + " fromCache: " + x);
    }
  }
  
  private void a(String paramString)
  {
    Log.v("GenericRequest", paramString + " this: " + b);
  }
  
  private static void a(String paramString1, Object paramObject, String paramString2)
  {
    if (paramObject == null)
    {
      paramString1 = new StringBuilder(paramString1);
      paramString1.append(" must not be null");
      if (paramString2 != null)
      {
        paramString1.append(", ");
        paramString1.append(paramString2);
      }
      throw new NullPointerException(paramString1.toString());
    }
  }
  
  private void b(t paramt)
  {
    q.a(paramt);
    y = null;
  }
  
  private void b(com.yelp.android.ae.f<A, T, Z, R> paramf, A paramA, com.bumptech.glide.load.b paramb, Context paramContext, Priority paramPriority, j<R> paramj, float paramFloat, Drawable paramDrawable1, int paramInt1, Drawable paramDrawable2, int paramInt2, c<? super A, R> paramc, b paramb1, com.bumptech.glide.load.engine.d paramd, com.bumptech.glide.load.f<Z> paramf1, Class<R> paramClass, boolean paramBoolean, g<R> paramg, int paramInt3, int paramInt4, DiskCacheStrategy paramDiskCacheStrategy)
  {
    h = paramf;
    j = paramA;
    c = paramb;
    f = paramContext.getApplicationContext();
    m = paramPriority;
    n = paramj;
    p = paramFloat;
    v = paramDrawable1;
    d = paramInt1;
    w = paramDrawable2;
    e = paramInt2;
    o = paramc;
    i = paramb1;
    q = paramd;
    g = paramf1;
    k = paramClass;
    l = paramBoolean;
    r = paramg;
    s = paramInt3;
    t = paramInt4;
    u = paramDiskCacheStrategy;
    B = GenericRequest.Status.PENDING;
    if (paramA != null)
    {
      a("ModelLoader", paramf.e(), "try .using(ModelLoader)");
      a("Transcoder", paramf.f(), "try .as*(Class).transcode(ResourceTranscoder)");
      a("Transformation", paramf1, "try .transform(UnitTransformation.get())");
      if (!paramDiskCacheStrategy.cacheSource()) {
        break label256;
      }
      a("SourceEncoder", paramf.c(), "try .sourceEncoder(Encoder) or .diskCacheStrategy(NONE/RESULT)");
    }
    for (;;)
    {
      if ((paramDiskCacheStrategy.cacheSource()) || (paramDiskCacheStrategy.cacheResult())) {
        a("CacheDecoder", paramf.a(), "try .cacheDecoder(ResouceDecoder) or .diskCacheStrategy(NONE)");
      }
      if (paramDiskCacheStrategy.cacheResult()) {
        a("Encoder", paramf.d(), "try .encode(ResourceEncoder) or .diskCacheStrategy(NONE/SOURCE)");
      }
      return;
      label256:
      a("SourceDecoder", paramf.b(), "try .decoder/.imageDecoder/.videoDecoder(ResourceDecoder) or .diskCacheStrategy(ALL/SOURCE)");
    }
  }
  
  private void b(Exception paramException)
  {
    if (!n()) {
      return;
    }
    Drawable localDrawable2 = k();
    Drawable localDrawable1 = localDrawable2;
    if (localDrawable2 == null) {
      localDrawable1 = l();
    }
    n.a(paramException, localDrawable1);
  }
  
  private Drawable k()
  {
    if ((w == null) && (e > 0)) {
      w = f.getResources().getDrawable(e);
    }
    return w;
  }
  
  private Drawable l()
  {
    if ((v == null) && (d > 0)) {
      v = f.getResources().getDrawable(d);
    }
    return v;
  }
  
  private boolean m()
  {
    return (i == null) || (i.a(this));
  }
  
  private boolean n()
  {
    return (i == null) || (i.b(this));
  }
  
  private boolean o()
  {
    return (i == null) || (!i.c());
  }
  
  public void a()
  {
    h = null;
    j = null;
    f = null;
    n = null;
    v = null;
    w = null;
    o = null;
    i = null;
    g = null;
    r = null;
    x = false;
    z = null;
    a.offer(this);
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if (Log.isLoggable("GenericRequest", 2)) {
      a("Got onSizeReady in " + com.yelp.android.ai.c.a(A));
    }
    if (B != GenericRequest.Status.WAITING_FOR_SIZE) {
      return;
    }
    B = GenericRequest.Status.RUNNING;
    paramInt1 = Math.round(p * paramInt1);
    paramInt2 = Math.round(p * paramInt2);
    com.yelp.android.r.c localc = h.e().a(j, paramInt1, paramInt2);
    if (localc == null)
    {
      a(new Exception("Got null fetcher from model loader"));
      return;
    }
    com.yelp.android.ad.c localc1 = h.f();
    if (Log.isLoggable("GenericRequest", 2)) {
      a("finished setup for calling load in " + com.yelp.android.ai.c.a(A));
    }
    x = true;
    z = q.a(c, paramInt1, paramInt2, localc, h, g, localc1, m, l, u, this);
    if (y != null) {}
    for (boolean bool = true;; bool = false)
    {
      x = bool;
      if (!Log.isLoggable("GenericRequest", 2)) {
        break;
      }
      a("finished onSizeReady in " + com.yelp.android.ai.c.a(A));
      return;
    }
  }
  
  public void a(t<?> paramt)
  {
    if (paramt == null)
    {
      a(new Exception("Expected to receive a Resource<R> with an object of " + k + " inside, but instead got null."));
      return;
    }
    Object localObject2 = paramt.b();
    if ((localObject2 == null) || (!k.isAssignableFrom(localObject2.getClass())))
    {
      b(paramt);
      StringBuilder localStringBuilder = new StringBuilder().append("Expected to receive an object of ").append(k).append(" but instead got ");
      Object localObject1;
      if (localObject2 != null)
      {
        localObject1 = localObject2.getClass();
        localObject1 = localStringBuilder.append(localObject1).append("{").append(localObject2).append("}").append(" inside Resource{").append(paramt).append("}.");
        if (localObject2 == null) {
          break label186;
        }
      }
      label186:
      for (paramt = "";; paramt = " To indicate failure return a null Resource object, rather than a Resource object containing null data.")
      {
        a(new Exception(paramt));
        return;
        localObject1 = "";
        break;
      }
    }
    if (!m())
    {
      b(paramt);
      B = GenericRequest.Status.COMPLETE;
      return;
    }
    a(paramt, localObject2);
  }
  
  public void a(Exception paramException)
  {
    if (Log.isLoggable("GenericRequest", 3)) {
      Log.d("GenericRequest", "load failed", paramException);
    }
    B = GenericRequest.Status.FAILED;
    if ((o == null) || (!o.onException(paramException, j, n, o()))) {
      b(paramException);
    }
  }
  
  public void b()
  {
    A = com.yelp.android.ai.c.a();
    if (j == null)
    {
      a(null);
      return;
    }
    B = GenericRequest.Status.WAITING_FOR_SIZE;
    if ((s > 0) && (t > 0)) {
      a(s, t);
    }
    for (;;)
    {
      if ((!g()) && (!j()) && (n())) {
        n.c(l());
      }
      if (!Log.isLoggable("GenericRequest", 2)) {
        break;
      }
      a("finished run method in " + com.yelp.android.ai.c.a(A));
      return;
      n.a(this);
    }
  }
  
  void c()
  {
    B = GenericRequest.Status.CANCELLED;
    if (z != null)
    {
      z.a();
      z = null;
    }
  }
  
  public void d()
  {
    com.yelp.android.ai.f.a();
    c();
    if (y != null) {
      b(y);
    }
    if (n()) {
      n.a(l());
    }
  }
  
  public void e()
  {
    d();
    B = GenericRequest.Status.PAUSED;
  }
  
  public boolean f()
  {
    return (B == GenericRequest.Status.RUNNING) || (B == GenericRequest.Status.WAITING_FOR_SIZE);
  }
  
  public boolean g()
  {
    return B == GenericRequest.Status.COMPLETE;
  }
  
  public boolean h()
  {
    return g();
  }
  
  public boolean i()
  {
    return B == GenericRequest.Status.CANCELLED;
  }
  
  public boolean j()
  {
    return B == GenericRequest.Status.FAILED;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.request.GenericRequest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */