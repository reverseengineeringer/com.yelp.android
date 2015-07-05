package com.bumptech.glide;

import android.content.Context;
import android.widget.ImageView;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.manager.l;
import com.yelp.android.ag.j;

public class c<ModelType>
  extends e<ModelType, com.yelp.android.v.h, com.yelp.android.ac.a, com.yelp.android.z.b>
{
  c(Context paramContext, Class<ModelType> paramClass, com.yelp.android.ae.f<ModelType, com.yelp.android.v.h, com.yelp.android.ac.a, com.yelp.android.z.b> paramf, h paramh, l paraml, com.bumptech.glide.manager.h paramh1)
  {
    super(paramContext, paramClass, paramf, com.yelp.android.z.b.class, paramh, paraml, paramh1);
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
  
  public c<ModelType> a(com.bumptech.glide.load.a<com.yelp.android.v.h> parama)
  {
    super.b(parama);
    return this;
  }
  
  public c<ModelType> a(com.bumptech.glide.load.b paramb)
  {
    super.b(paramb);
    return this;
  }
  
  public c<ModelType> a(d<com.yelp.android.v.h, com.yelp.android.ac.a> paramd)
  {
    super.b(paramd);
    return this;
  }
  
  public c<ModelType> a(DiskCacheStrategy paramDiskCacheStrategy)
  {
    super.b(paramDiskCacheStrategy);
    return this;
  }
  
  public c<ModelType> a(com.bumptech.glide.request.c<? super ModelType, com.yelp.android.z.b> paramc)
  {
    super.b(paramc);
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
  
  public c<ModelType> a(com.bumptech.glide.load.f<com.yelp.android.ac.a>... paramVarArgs)
  {
    super.b(paramVarArgs);
    return this;
  }
  
  public j<com.yelp.android.z.b> a(ImageView paramImageView)
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
    super.a(new com.yelp.android.af.a());
    return this;
  }
  
  public c<ModelType> d()
  {
    super.h();
    return this;
  }
  
  void e()
  {
    b();
  }
  
  void f()
  {
    a();
  }
  
  public c<ModelType> i()
  {
    return (c)super.g();
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */