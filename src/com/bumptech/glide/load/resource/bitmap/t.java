package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.d;
import com.yelp.android.aa.c;
import com.yelp.android.v.p;
import java.io.File;
import java.io.InputStream;

public class t
  implements com.yelp.android.ae.b<InputStream, Bitmap>
{
  private final u a;
  private final b b;
  private final p c = new p();
  private final c<Bitmap> d;
  
  public t(com.bumptech.glide.load.engine.bitmap_recycle.e parame, DecodeFormat paramDecodeFormat)
  {
    a = new u(parame, paramDecodeFormat);
    b = new b();
    d = new c(a);
  }
  
  public d<File, Bitmap> a()
  {
    return d;
  }
  
  public d<InputStream, Bitmap> b()
  {
    return a;
  }
  
  public a<InputStream> c()
  {
    return c;
  }
  
  public com.bumptech.glide.load.e<Bitmap> d()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */