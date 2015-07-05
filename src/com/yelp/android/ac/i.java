package com.yelp.android.ac;

import android.graphics.Bitmap;
import com.bumptech.glide.load.d;
import com.yelp.android.v.h;
import java.io.File;
import java.io.InputStream;

public class i
  implements com.yelp.android.ae.b<h, a>
{
  private final d<File, a> a;
  private final d<h, a> b;
  private final com.bumptech.glide.load.e<a> c;
  private final com.bumptech.glide.load.a<h> d;
  
  public i(com.yelp.android.ae.b<h, Bitmap> paramb, com.yelp.android.ae.b<InputStream, com.yelp.android.ab.b> paramb1, com.bumptech.glide.load.engine.bitmap_recycle.e parame)
  {
    parame = new c(paramb.b(), paramb1.b(), parame);
    a = new com.yelp.android.aa.c(new g(parame));
    b = parame;
    c = new f(paramb.d(), paramb1.d());
    d = paramb.c();
  }
  
  public d<File, a> a()
  {
    return a;
  }
  
  public d<h, a> b()
  {
    return b;
  }
  
  public com.bumptech.glide.load.a<h> c()
  {
    return d;
  }
  
  public com.bumptech.glide.load.e<a> d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */