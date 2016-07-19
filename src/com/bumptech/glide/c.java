package com.bumptech.glide;

import android.content.Context;
import android.widget.ImageView;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.manager.l;
import com.yelp.android.am.j;

public class c<ModelType>
  extends e<ModelType, com.yelp.android.aa.g, com.yelp.android.ah.a, com.yelp.android.ae.b>
{
  c(Context paramContext, Class<ModelType> paramClass, com.yelp.android.ak.f<ModelType, com.yelp.android.aa.g, com.yelp.android.ah.a, com.yelp.android.ae.b> paramf, g paramg, l paraml, com.bumptech.glide.manager.g paramg1)
  {
    super(paramContext, paramClass, paramf, com.yelp.android.ae.b.class, paramg, paraml, paramg1);
    c();
  }
  
  public c<ModelType> a()
  {
    return a(new com.bumptech.glide.load.f[] { c.e() });
  }
  
  public c<ModelType> a(int paramInt)
  {
    super.d(paramInt);
    return this;
  }
  
  public c<ModelType> a(int paramInt1, int paramInt2)
  {
    super.b(paramInt1, paramInt2);
    return this;
  }
  
  public c<ModelType> a(Priority paramPriority)
  {
    super.b(paramPriority);
    return this;
  }
  
  public c<ModelType> a(com.bumptech.glide.load.a<com.yelp.android.aa.g> parama)
  {
    super.b(parama);
    return this;
  }
  
  public c<ModelType> a(com.bumptech.glide.load.b paramb)
  {
    super.b(paramb);
    return this;
  }
  
  public c<ModelType> a(d<com.yelp.android.aa.g, com.yelp.android.ah.a> paramd)
  {
    super.b(paramd);
    return this;
  }
  
  public c<ModelType> a(DiskCacheStrategy paramDiskCacheStrategy)
  {
    super.b(paramDiskCacheStrategy);
    return this;
  }
  
  public c<ModelType> a(ModelType paramModelType)
  {
    super.b(paramModelType);
    return this;
  }
  
  public c<ModelType> a(boolean paramBoolean)
  {
    super.b(paramBoolean);
    return this;
  }
  
  public c<ModelType> a(com.bumptech.glide.load.f<com.yelp.android.ah.a>... paramVarArgs)
  {
    super.b(paramVarArgs);
    return this;
  }
  
  public j<com.yelp.android.ae.b> a(ImageView paramImageView)
  {
    return super.a(paramImageView);
  }
  
  public c<ModelType> b()
  {
    return a(new com.bumptech.glide.load.f[] { c.f() });
  }
  
  public c<ModelType> b(int paramInt)
  {
    super.c(paramInt);
    return this;
  }
  
  public final c<ModelType> c()
  {
    super.a(new com.yelp.android.al.a());
    return this;
  }
  
  void d()
  {
    b();
  }
  
  void e()
  {
    a();
  }
  
  public c<ModelType> g()
  {
    return (c)super.f();
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */