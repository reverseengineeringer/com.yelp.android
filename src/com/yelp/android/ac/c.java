package com.yelp.android.ac;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.t;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.ImageType;
import com.yelp.android.v.h;
import java.io.InputStream;

public class c
  implements com.bumptech.glide.load.d<h, a>
{
  private static final e a = new e();
  private static final d b = new d();
  private final com.bumptech.glide.load.d<h, Bitmap> c;
  private final com.bumptech.glide.load.d<InputStream, com.yelp.android.ab.b> d;
  private final com.bumptech.glide.load.engine.bitmap_recycle.e e;
  private final e f;
  private final d g;
  private String h;
  
  public c(com.bumptech.glide.load.d<h, Bitmap> paramd, com.bumptech.glide.load.d<InputStream, com.yelp.android.ab.b> paramd1, com.bumptech.glide.load.engine.bitmap_recycle.e parame)
  {
    this(paramd, paramd1, parame, a, b);
  }
  
  c(com.bumptech.glide.load.d<h, Bitmap> paramd, com.bumptech.glide.load.d<InputStream, com.yelp.android.ab.b> paramd1, com.bumptech.glide.load.engine.bitmap_recycle.e parame, e parame1, d paramd2)
  {
    c = paramd;
    d = paramd1;
    e = parame;
    f = parame1;
    g = paramd2;
  }
  
  private a a(h paramh, int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    if (paramh.a() != null) {
      return b(paramh, paramInt1, paramInt2, paramArrayOfByte);
    }
    return b(paramh, paramInt1, paramInt2);
  }
  
  private a a(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    paramInputStream = d.a(paramInputStream, paramInt1, paramInt2);
    if (paramInputStream != null)
    {
      com.yelp.android.ab.b localb = (com.yelp.android.ab.b)paramInputStream.b();
      if (localb.e() > 1) {
        return new a(null, paramInputStream);
      }
      return new a(new com.bumptech.glide.load.resource.bitmap.c(localb.b(), e), null);
    }
    return null;
  }
  
  private a b(h paramh, int paramInt1, int paramInt2)
  {
    paramh = c.a(paramh, paramInt1, paramInt2);
    if (paramh != null) {
      return new a(paramh, null);
    }
    return null;
  }
  
  private a b(h paramh, int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    InputStream localInputStream = g.a(paramh.a(), paramArrayOfByte);
    localInputStream.mark(2048);
    Object localObject = f.a(localInputStream);
    localInputStream.reset();
    paramArrayOfByte = null;
    if (localObject == ImageHeaderParser.ImageType.GIF) {
      paramArrayOfByte = a(localInputStream, paramInt1, paramInt2);
    }
    localObject = paramArrayOfByte;
    if (paramArrayOfByte == null) {
      localObject = b(new h(localInputStream, paramh.b()), paramInt1, paramInt2);
    }
    return (a)localObject;
  }
  
  public t<a> a(h paramh, int paramInt1, int paramInt2)
  {
    com.yelp.android.ai.a locala = com.yelp.android.ai.a.a();
    byte[] arrayOfByte = locala.b();
    try
    {
      paramh = a(paramh, paramInt1, paramInt2, arrayOfByte);
      locala.a(arrayOfByte);
      if (paramh != null) {
        return new b(paramh);
      }
    }
    finally
    {
      locala.a(arrayOfByte);
    }
    return null;
  }
  
  public String a()
  {
    if (h == null) {
      h = (d.a() + c.a());
    }
    return h;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */