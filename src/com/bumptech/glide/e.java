package com.bumptech.glide;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.manager.l;
import com.bumptech.glide.request.GenericRequest;
import com.yelp.android.am.j;
import com.yelp.android.ao.h;

public class e<ModelType, DataType, ResourceType, TranscodeType>
  implements Cloneable
{
  private boolean A;
  private Drawable B;
  private int C;
  protected final Class<ModelType> a;
  protected final Context b;
  protected final g c;
  protected final Class<TranscodeType> d;
  protected final l e;
  protected final com.bumptech.glide.manager.g f;
  private com.yelp.android.ak.a<ModelType, DataType, ResourceType, TranscodeType> g;
  private ModelType h;
  private com.bumptech.glide.load.b i = com.yelp.android.an.a.a();
  private boolean j;
  private int k;
  private int l;
  private com.bumptech.glide.request.e<? super ModelType, TranscodeType> m;
  private Float n;
  private e<?, ?, ?, TranscodeType> o;
  private Float p = Float.valueOf(1.0F);
  private Drawable q;
  private Drawable r;
  private Priority s = null;
  private boolean t = true;
  private com.yelp.android.al.d<TranscodeType> u = com.yelp.android.al.e.a();
  private int v = -1;
  private int w = -1;
  private DiskCacheStrategy x = DiskCacheStrategy.RESULT;
  private com.bumptech.glide.load.f<ResourceType> y = com.yelp.android.ad.d.b();
  private boolean z;
  
  e(Context paramContext, Class<ModelType> paramClass, com.yelp.android.ak.f<ModelType, DataType, ResourceType, TranscodeType> paramf, Class<TranscodeType> paramClass1, g paramg, l paraml, com.bumptech.glide.manager.g paramg1)
  {
    b = paramContext;
    a = paramClass;
    d = paramClass1;
    c = paramg;
    e = paraml;
    f = paramg1;
    paramClass1 = (Class<TranscodeType>)localObject;
    if (paramf != null) {
      paramClass1 = new com.yelp.android.ak.a(paramf);
    }
    g = paramClass1;
    if (paramContext == null) {
      throw new NullPointerException("Context can't be null");
    }
    if ((paramClass != null) && (paramf == null)) {
      throw new NullPointerException("LoadProvider must not be null");
    }
  }
  
  e(com.yelp.android.ak.f<ModelType, DataType, ResourceType, TranscodeType> paramf, Class<TranscodeType> paramClass, e<ModelType, ?, ?, ?> parame)
  {
    this(b, a, paramf, paramClass, c, e, f);
    h = h;
    j = j;
    x = x;
    t = t;
  }
  
  private Priority a()
  {
    if (s == Priority.LOW) {
      return Priority.NORMAL;
    }
    if (s == Priority.NORMAL) {
      return Priority.HIGH;
    }
    return Priority.IMMEDIATE;
  }
  
  private com.bumptech.glide.request.b a(j<TranscodeType> paramj, float paramFloat, Priority paramPriority, com.bumptech.glide.request.c paramc)
  {
    return GenericRequest.a(g, h, i, b, paramPriority, paramj, paramFloat, q, k, r, l, B, C, m, paramc, c.b(), y, d, t, u, w, v, x);
  }
  
  private com.bumptech.glide.request.b a(j<TranscodeType> paramj, com.bumptech.glide.request.g paramg)
  {
    if (o != null)
    {
      if (A) {
        throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
      }
      if (o.u.equals(com.yelp.android.al.e.a())) {
        o.u = u;
      }
      if (o.s == null) {
        o.s = a();
      }
      if ((h.a(w, v)) && (!h.a(o.w, o.v))) {
        o.b(w, v);
      }
      paramg = new com.bumptech.glide.request.g(paramg);
      com.bumptech.glide.request.b localb = a(paramj, p.floatValue(), s, paramg);
      A = true;
      paramj = o.a(paramj, paramg);
      A = false;
      paramg.a(localb, paramj);
      return paramg;
    }
    if (n != null)
    {
      paramg = new com.bumptech.glide.request.g(paramg);
      paramg.a(a(paramj, p.floatValue(), s, paramg), a(paramj, n.floatValue(), a(), paramg));
      return paramg;
    }
    return a(paramj, p.floatValue(), s, paramg);
  }
  
  private com.bumptech.glide.request.b b(j<TranscodeType> paramj)
  {
    if (s == null) {
      s = Priority.NORMAL;
    }
    return a(paramj, null);
  }
  
  e<ModelType, DataType, ResourceType, TranscodeType> a(com.yelp.android.al.d<TranscodeType> paramd)
  {
    if (paramd == null) {
      throw new NullPointerException("Animation factory must not be null!");
    }
    u = paramd;
    return this;
  }
  
  public j<TranscodeType> a(ImageView paramImageView)
  {
    
    if (paramImageView == null) {
      throw new IllegalArgumentException("You must pass in a non null View");
    }
    if ((!z) && (paramImageView.getScaleType() != null)) {
      switch (2.a[paramImageView.getScaleType().ordinal()])
      {
      }
    }
    for (;;)
    {
      return a(c.a(paramImageView, d));
      e();
      continue;
      d();
    }
  }
  
  public <Y extends j<TranscodeType>> Y a(Y paramY)
  {
    
    if (paramY == null) {
      throw new IllegalArgumentException("You must pass in a non null Target");
    }
    if (!j) {
      throw new IllegalArgumentException("You must first set a model (try #load())");
    }
    com.bumptech.glide.request.b localb = paramY.a();
    if (localb != null)
    {
      localb.d();
      e.b(localb);
      localb.a();
    }
    localb = b(paramY);
    paramY.a(localb);
    f.a(paramY);
    e.a(localb);
    return paramY;
  }
  
  public e<ModelType, DataType, ResourceType, TranscodeType> b(int paramInt1, int paramInt2)
  {
    if (!h.a(paramInt1, paramInt2)) {
      throw new IllegalArgumentException("Width and height must be Target#SIZE_ORIGINAL or > 0");
    }
    w = paramInt1;
    v = paramInt2;
    return this;
  }
  
  public e<ModelType, DataType, ResourceType, TranscodeType> b(Priority paramPriority)
  {
    s = paramPriority;
    return this;
  }
  
  public e<ModelType, DataType, ResourceType, TranscodeType> b(com.bumptech.glide.load.a<DataType> parama)
  {
    if (g != null) {
      g.a(parama);
    }
    return this;
  }
  
  public e<ModelType, DataType, ResourceType, TranscodeType> b(com.bumptech.glide.load.b paramb)
  {
    if (paramb == null) {
      throw new NullPointerException("Signature must not be null");
    }
    i = paramb;
    return this;
  }
  
  public e<ModelType, DataType, ResourceType, TranscodeType> b(com.bumptech.glide.load.d<DataType, ResourceType> paramd)
  {
    if (g != null) {
      g.a(paramd);
    }
    return this;
  }
  
  public e<ModelType, DataType, ResourceType, TranscodeType> b(DiskCacheStrategy paramDiskCacheStrategy)
  {
    x = paramDiskCacheStrategy;
    return this;
  }
  
  public e<ModelType, DataType, ResourceType, TranscodeType> b(ModelType paramModelType)
  {
    h = paramModelType;
    j = true;
    return this;
  }
  
  public e<ModelType, DataType, ResourceType, TranscodeType> b(boolean paramBoolean)
  {
    if (!paramBoolean) {}
    for (paramBoolean = true;; paramBoolean = false)
    {
      t = paramBoolean;
      return this;
    }
  }
  
  public e<ModelType, DataType, ResourceType, TranscodeType> b(com.bumptech.glide.load.f<ResourceType>... paramVarArgs)
  {
    z = true;
    if (paramVarArgs.length == 1)
    {
      y = paramVarArgs[0];
      return this;
    }
    y = new com.bumptech.glide.load.c(paramVarArgs);
    return this;
  }
  
  public e<ModelType, DataType, ResourceType, TranscodeType> c(int paramInt)
  {
    l = paramInt;
    return this;
  }
  
  public e<ModelType, DataType, ResourceType, TranscodeType> d(int paramInt)
  {
    k = paramInt;
    return this;
  }
  
  public com.bumptech.glide.request.a<TranscodeType> d(int paramInt1, int paramInt2)
  {
    final com.bumptech.glide.request.d locald = new com.bumptech.glide.request.d(c.g(), paramInt1, paramInt2);
    c.g().post(new Runnable()
    {
      public void run()
      {
        if (!locald.isCancelled()) {
          a(locald);
        }
      }
    });
    return locald;
  }
  
  void d() {}
  
  void e() {}
  
  /* Error */
  public e<ModelType, DataType, ResourceType, TranscodeType> f()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 372	java/lang/Object:clone	()Ljava/lang/Object;
    //   4: checkcast 2	com/bumptech/glide/e
    //   7: astore_2
    //   8: aload_0
    //   9: getfield 134	com/bumptech/glide/e:g	Lcom/yelp/android/ak/a;
    //   12: ifnull +18 -> 30
    //   15: aload_0
    //   16: getfield 134	com/bumptech/glide/e:g	Lcom/yelp/android/ak/a;
    //   19: invokevirtual 375	com/yelp/android/ak/a:g	()Lcom/yelp/android/ak/a;
    //   22: astore_1
    //   23: aload_2
    //   24: aload_1
    //   25: putfield 134	com/bumptech/glide/e:g	Lcom/yelp/android/ak/a;
    //   28: aload_2
    //   29: areturn
    //   30: aconst_null
    //   31: astore_1
    //   32: goto -9 -> 23
    //   35: astore_1
    //   36: new 377	java/lang/RuntimeException
    //   39: dup
    //   40: aload_1
    //   41: invokespecial 380	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	e
    //   22	10	1	locala	com.yelp.android.ak.a
    //   35	6	1	localCloneNotSupportedException	CloneNotSupportedException
    //   7	22	2	locale	e
    // Exception table:
    //   from	to	target	type
    //   0	23	35	java/lang/CloneNotSupportedException
    //   23	28	35	java/lang/CloneNotSupportedException
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */