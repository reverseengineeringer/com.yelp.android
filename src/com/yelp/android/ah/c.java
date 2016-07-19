package com.yelp.android.ah;

import android.graphics.Bitmap;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.i;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser;
import com.bumptech.glide.load.resource.bitmap.ImageHeaderParser.ImageType;
import com.bumptech.glide.load.resource.bitmap.RecyclableBufferedInputStream;
import com.yelp.android.aa.g;
import java.io.IOException;
import java.io.InputStream;

public class c
  implements d<g, a>
{
  private static final b a = new b();
  private static final a b = new a();
  private final d<g, Bitmap> c;
  private final d<InputStream, com.yelp.android.ag.b> d;
  private final com.yelp.android.x.c e;
  private final b f;
  private final a g;
  private String h;
  
  public c(d<g, Bitmap> paramd, d<InputStream, com.yelp.android.ag.b> paramd1, com.yelp.android.x.c paramc)
  {
    this(paramd, paramd1, paramc, a, b);
  }
  
  c(d<g, Bitmap> paramd, d<InputStream, com.yelp.android.ag.b> paramd1, com.yelp.android.x.c paramc, b paramb, a parama)
  {
    c = paramd;
    d = paramd1;
    e = paramc;
    f = paramb;
    g = parama;
  }
  
  private a a(g paramg, int paramInt1, int paramInt2, byte[] paramArrayOfByte)
    throws IOException
  {
    if (paramg.a() != null) {
      return b(paramg, paramInt1, paramInt2, paramArrayOfByte);
    }
    return b(paramg, paramInt1, paramInt2);
  }
  
  private a a(InputStream paramInputStream, int paramInt1, int paramInt2)
    throws IOException
  {
    paramInputStream = d.a(paramInputStream, paramInt1, paramInt2);
    if (paramInputStream != null)
    {
      com.yelp.android.ag.b localb = (com.yelp.android.ag.b)paramInputStream.b();
      if (localb.e() > 1) {
        return new a(null, paramInputStream);
      }
      return new a(new com.bumptech.glide.load.resource.bitmap.c(localb.b(), e), null);
    }
    return null;
  }
  
  private a b(g paramg, int paramInt1, int paramInt2)
    throws IOException
  {
    paramg = c.a(paramg, paramInt1, paramInt2);
    if (paramg != null) {
      return new a(paramg, null);
    }
    return null;
  }
  
  private a b(g paramg, int paramInt1, int paramInt2, byte[] paramArrayOfByte)
    throws IOException
  {
    InputStream localInputStream = g.a(paramg.a(), paramArrayOfByte);
    localInputStream.mark(2048);
    Object localObject = f.a(localInputStream);
    localInputStream.reset();
    paramArrayOfByte = null;
    if (localObject == ImageHeaderParser.ImageType.GIF) {
      paramArrayOfByte = a(localInputStream, paramInt1, paramInt2);
    }
    localObject = paramArrayOfByte;
    if (paramArrayOfByte == null) {
      localObject = b(new g(localInputStream, paramg.b()), paramInt1, paramInt2);
    }
    return (a)localObject;
  }
  
  public i<a> a(g paramg, int paramInt1, int paramInt2)
    throws IOException
  {
    com.yelp.android.ao.a locala = com.yelp.android.ao.a.a();
    byte[] arrayOfByte = locala.b();
    try
    {
      paramg = a(paramg, paramInt1, paramInt2, arrayOfByte);
      locala.a(arrayOfByte);
      if (paramg != null) {
        return new b(paramg);
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
  
  static class a
  {
    public InputStream a(InputStream paramInputStream, byte[] paramArrayOfByte)
    {
      return new RecyclableBufferedInputStream(paramInputStream, paramArrayOfByte);
    }
  }
  
  static class b
  {
    public ImageHeaderParser.ImageType a(InputStream paramInputStream)
      throws IOException
    {
      return new ImageHeaderParser(paramInputStream).b();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ah.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */