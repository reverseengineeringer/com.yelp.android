package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.a;
import com.bumptech.glide.load.d;
import com.bumptech.glide.load.e;
import java.io.File;
import java.io.InputStream;

public class n
  implements com.yelp.android.ak.b<InputStream, Bitmap>
{
  private final o a;
  private final b b;
  private final com.yelp.android.aa.o c = new com.yelp.android.aa.o();
  private final com.yelp.android.af.c<Bitmap> d;
  
  public n(com.yelp.android.x.c paramc, DecodeFormat paramDecodeFormat)
  {
    a = new o(paramc, paramDecodeFormat);
    b = new b();
    d = new com.yelp.android.af.c(a);
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
  
  public e<Bitmap> d()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.resource.bitmap.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */