package com.bumptech.glide;

import android.graphics.Bitmap;
import android.os.ParcelFileDescriptor;
import android.widget.ImageView;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.b;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.resource.bitmap.k;
import com.bumptech.glide.load.resource.bitmap.u;
import com.bumptech.glide.request.c;
import com.yelp.android.ag.j;
import java.io.InputStream;

public class a<ModelType, TranscodeType>
  extends e<ModelType, com.yelp.android.v.h, Bitmap, TranscodeType>
{
  private final com.bumptech.glide.load.engine.bitmap_recycle.e g;
  private com.bumptech.glide.load.resource.bitmap.f h = com.bumptech.glide.load.resource.bitmap.f.a;
  private DecodeFormat i;
  private com.bumptech.glide.load.d<InputStream, Bitmap> j;
  private com.bumptech.glide.load.d<ParcelFileDescriptor, Bitmap> k;
  
  a(com.yelp.android.ae.f<ModelType, com.yelp.android.v.h, Bitmap, TranscodeType> paramf, Class<TranscodeType> paramClass, e<ModelType, ?, ?, ?> parame)
  {
    super(paramf, paramClass, parame);
    g = c.a();
    i = c.g();
    j = new u(g, i);
    k = new k(g, i);
  }
  
  public a<ModelType, TranscodeType> a()
  {
    return a(new com.bumptech.glide.load.resource.bitmap.d[] { c.c() });
  }
  
  public a<ModelType, TranscodeType> a(int paramInt)
  {
    super.d(paramInt);
    return this;
  }
  
  public a<ModelType, TranscodeType> a(int paramInt1, int paramInt2)
  {
    super.b(paramInt1, paramInt2);
    return this;
  }
  
  public a<ModelType, TranscodeType> a(com.bumptech.glide.load.a<com.yelp.android.v.h> parama)
  {
    super.b(parama);
    return this;
  }
  
  public a<ModelType, TranscodeType> a(b paramb)
  {
    super.b(paramb);
    return this;
  }
  
  public a<ModelType, TranscodeType> a(com.bumptech.glide.load.d<com.yelp.android.v.h, Bitmap> paramd)
  {
    super.b(paramd);
    return this;
  }
  
  public a<ModelType, TranscodeType> a(DiskCacheStrategy paramDiskCacheStrategy)
  {
    super.b(paramDiskCacheStrategy);
    return this;
  }
  
  public a<ModelType, TranscodeType> a(c<? super ModelType, TranscodeType> paramc)
  {
    super.b(paramc);
    return this;
  }
  
  public a<ModelType, TranscodeType> a(ModelType paramModelType)
  {
    super.b(paramModelType);
    return this;
  }
  
  public a<ModelType, TranscodeType> a(boolean paramBoolean)
  {
    super.b(paramBoolean);
    return this;
  }
  
  public a<ModelType, TranscodeType> a(com.bumptech.glide.load.f<Bitmap>... paramVarArgs)
  {
    super.b(paramVarArgs);
    return this;
  }
  
  public a<ModelType, TranscodeType> a(com.bumptech.glide.load.resource.bitmap.d... paramVarArgs)
  {
    super.b(paramVarArgs);
    return this;
  }
  
  public j<TranscodeType> a(ImageView paramImageView)
  {
    return super.a(paramImageView);
  }
  
  public a<ModelType, TranscodeType> b()
  {
    return a(new com.bumptech.glide.load.resource.bitmap.d[] { c.d() });
  }
  
  public a<ModelType, TranscodeType> b(int paramInt)
  {
    super.c(paramInt);
    return this;
  }
  
  public a<ModelType, TranscodeType> c()
  {
    super.h();
    return this;
  }
  
  public a<ModelType, TranscodeType> d()
  {
    return (a)super.g();
  }
  
  void e()
  {
    b();
  }
  
  void f()
  {
    a();
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */