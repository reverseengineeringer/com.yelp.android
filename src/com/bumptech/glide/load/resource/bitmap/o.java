package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.i;
import java.io.InputStream;

public class o
  implements d<InputStream, Bitmap>
{
  private final f a;
  private com.yelp.android.x.c b;
  private DecodeFormat c;
  private String d;
  
  public o(f paramf, com.yelp.android.x.c paramc, DecodeFormat paramDecodeFormat)
  {
    a = paramf;
    b = paramc;
    c = paramDecodeFormat;
  }
  
  public o(com.yelp.android.x.c paramc, DecodeFormat paramDecodeFormat)
  {
    this(f.a, paramc, paramDecodeFormat);
  }
  
  public i<Bitmap> a(InputStream paramInputStream, int paramInt1, int paramInt2)
  {
    return c.a(a.a(paramInputStream, b, paramInt1, paramInt2, c), b);
  }
  
  public String a()
  {
    if (d == null) {
      d = ("StreamBitmapDecoder.com.bumptech.glide.load.resource.bitmap" + a.a() + c.name());
    }
    return d;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */