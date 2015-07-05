package com.bumptech.glide;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.manager.l;
import com.bumptech.glide.request.GenericRequest;
import com.yelp.android.af.g;
import com.yelp.android.ag.j;

public class e<ModelType, DataType, ResourceType, TranscodeType>
  implements Cloneable
{
  protected final Class<ModelType> a;
  protected final Context b;
  protected final h c;
  protected final Class<TranscodeType> d;
  protected final l e;
  protected final com.bumptech.glide.manager.h f;
  private com.yelp.android.ae.a<ModelType, DataType, ResourceType, TranscodeType> g;
  private ModelType h;
  private com.bumptech.glide.load.b i = com.yelp.android.ah.b.a();
  private boolean j;
  private int k;
  private int l;
  private com.bumptech.glide.request.c<? super ModelType, TranscodeType> m;
  private Float n;
  private e<?, ?, ?, TranscodeType> o;
  private Float p = Float.valueOf(1.0F);
  private Drawable q;
  private Drawable r;
  private Priority s = null;
  private boolean t = true;
  private g<TranscodeType> u = com.yelp.android.af.h.a();
  private int v = -1;
  private int w = -1;
  private DiskCacheStrategy x = DiskCacheStrategy.RESULT;
  private com.bumptech.glide.load.f<ResourceType> y = com.yelp.android.y.d.b();
  private boolean z;
  
  e(Context paramContext, Class<ModelType> paramClass, com.yelp.android.ae.f<ModelType, DataType, ResourceType, TranscodeType> paramf, Class<TranscodeType> paramClass1, h paramh, l paraml, com.bumptech.glide.manager.h paramh1)
  {
    b = paramContext;
    a = paramClass;
    d = paramClass1;
    c = paramh;
    e = paraml;
    f = paramh1;
    paramClass1 = (Class<TranscodeType>)localObject;
    if (paramf != null) {
      paramClass1 = new com.yelp.android.ae.a(paramf);
    }
    g = paramClass1;
    if (paramContext == null) {
      throw new NullPointerException("Context can't be null");
    }
    if ((paramClass != null) && (paramf == null)) {
      throw new NullPointerException("LoadProvider must not be null");
    }
  }
  
  e(com.yelp.android.ae.f<ModelType, DataType, ResourceType, TranscodeType> paramf, Class<TranscodeType> paramClass, e<ModelType, ?, ?, ?> parame)
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
  
  private com.bumptech.glide.request.a a(j<TranscodeType> paramj, float paramFloat, Priority paramPriority, com.bumptech.glide.request.b paramb)
  {
    return GenericRequest.a(g, h, i, b, paramPriority, paramj, paramFloat, q, k, r, l, m, paramb, c.b(), y, d, t, u, w, v, x);
  }
  
  private com.bumptech.glide.request.a a(j<TranscodeType> paramj, com.bumptech.glide.request.e parame)
  {
    if (o != null)
    {
      if (o.u.equals(com.yelp.android.af.h.a())) {
        o.u = u;
      }
      if (o.s == null) {
        o.s = a();
      }
      parame = new com.bumptech.glide.request.e(parame);
      parame.a(a(paramj, p.floatValue(), s, parame), o.a(paramj, parame));
      return parame;
    }
    if (n != null)
    {
      parame = new com.bumptech.glide.request.e(parame);
      parame.a(a(paramj, p.floatValue(), s, parame), a(paramj, n.floatValue(), a(), parame));
      return parame;
    }
    return a(paramj, p.floatValue(), s, parame);
  }
  
  private com.bumptech.glide.request.a b(j<TranscodeType> paramj)
  {
    if (s == null) {
      s = Priority.NORMAL;
    }
    return a(paramj, null);
  }
  
  e<ModelType, DataType, ResourceType, TranscodeType> a(g<TranscodeType> paramg)
  {
    if (paramg == null) {
      throw new NullPointerException("Animation factory must not be null!");
    }
    u = paramg;
    return this;
  }
  
  public j<TranscodeType> a(ImageView paramImageView)
  {
    
    if (paramImageView == null) {
      throw new IllegalArgumentException("You must pass in a non null View");
    }
    if ((!z) && (paramImageView.getScaleType() != null)) {
      switch (f.a[paramImageView.getScaleType().ordinal()])
      {
      }
    }
    for (;;)
    {
      return a(c.a(paramImageView, d));
      f();
      continue;
      e();
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
    com.bumptech.glide.request.a locala = paramY.f();
    if (locala != null)
    {
      locala.d();
      e.b(locala);
      locala.a();
    }
    locala = b(paramY);
    paramY.a(locala);
    f.a(paramY);
    e.a(locala);
    return paramY;
  }
  
  public e<ModelType, DataType, ResourceType, TranscodeType> b(int paramInt1, int paramInt2)
  {
    if (paramInt1 <= 0) {
      throw new IllegalArgumentException("Width must be > 0");
    }
    if (paramInt2 <= 0) {
      throw new IllegalArgumentException("Height must be > 0");
    }
    w = paramInt1;
    v = paramInt2;
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
  
  public e<ModelType, DataType, ResourceType, TranscodeType> b(com.bumptech.glide.request.c<? super ModelType, TranscodeType> paramc)
  {
    m = paramc;
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
  
  void e() {}
  
  void f() {}
  
  /* Error */
  public e<ModelType, DataType, ResourceType, TranscodeType> g()
  {
    // Byte code:
    //   0: aload_0
    //   1: invokespecial 334	java/lang/Object:clone	()Ljava/lang/Object;
    //   4: checkcast 2	com/bumptech/glide/e
    //   7: astore_2
    //   8: aload_0
    //   9: getfield 127	com/bumptech/glide/e:g	Lcom/yelp/android/ae/a;
    //   12: ifnull +18 -> 30
    //   15: aload_0
    //   16: getfield 127	com/bumptech/glide/e:g	Lcom/yelp/android/ae/a;
    //   19: invokevirtual 337	com/yelp/android/ae/a:g	()Lcom/yelp/android/ae/a;
    //   22: astore_1
    //   23: aload_2
    //   24: aload_1
    //   25: putfield 127	com/bumptech/glide/e:g	Lcom/yelp/android/ae/a;
    //   28: aload_2
    //   29: areturn
    //   30: aconst_null
    //   31: astore_1
    //   32: goto -9 -> 23
    //   35: astore_1
    //   36: new 339	java/lang/RuntimeException
    //   39: dup
    //   40: aload_1
    //   41: invokespecial 342	java/lang/RuntimeException:<init>	(Ljava/lang/Throwable;)V
    //   44: athrow
    // Local variable table:
    //   start	length	slot	name	signature
    //   0	45	0	this	e
    //   22	10	1	locala	com.yelp.android.ae.a
    //   35	6	1	localCloneNotSupportedException	CloneNotSupportedException
    //   7	22	2	locale	e
    // Exception table:
    //   from	to	target	type
    //   0	23	35	java/lang/CloneNotSupportedException
    //   23	28	35	java/lang/CloneNotSupportedException
  }
  
  public e<ModelType, DataType, ResourceType, TranscodeType> h()
  {
    return b(new com.bumptech.glide.load.f[] { com.yelp.android.y.d.b() });
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */