package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.engine.bitmap_recycle.e;
import com.bumptech.glide.load.engine.t;
import java.io.InputStream;

public class u
  implements d<InputStream, Bitmap>
{
  private final f a;
  private e b;
  private DecodeFormat c;
  private String d;
  
  public u(e parame, DecodeFormat paramDecodeFormat)
  {
    this(f.a, parame, paramDecodeFormat);
  }
  
  public u(f paramf, e parame, DecodeFormat paramDecodeFormat)
  {
    a = paramf;
    b = parame;
    c = paramDecodeFormat;
  }
  
  public t<Bitmap> a(InputStream paramInputStream, int paramInt1, int paramInt2)
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
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */