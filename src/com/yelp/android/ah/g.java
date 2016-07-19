package com.yelp.android.ah;

import android.graphics.Bitmap;
import java.io.File;
import java.io.InputStream;

public class g
  implements com.yelp.android.ak.b<com.yelp.android.aa.g, a>
{
  private final com.bumptech.glide.load.d<File, a> a;
  private final com.bumptech.glide.load.d<com.yelp.android.aa.g, a> b;
  private final com.bumptech.glide.load.e<a> c;
  private final com.bumptech.glide.load.a<com.yelp.android.aa.g> d;
  
  public g(com.yelp.android.ak.b<com.yelp.android.aa.g, Bitmap> paramb, com.yelp.android.ak.b<InputStream, com.yelp.android.ag.b> paramb1, com.yelp.android.x.c paramc)
  {
    paramc = new c(paramb.b(), paramb1.b(), paramc);
    a = new com.yelp.android.af.c(new e(paramc));
    b = paramc;
    c = new d(paramb.d(), paramb1.d());
    d = paramb.c();
  }
  
  public com.bumptech.glide.load.d<File, a> a()
  {
    return a;
  }
  
  public com.bumptech.glide.load.d<com.yelp.android.aa.g, a> b()
  {
    return b;
  }
  
  public com.bumptech.glide.load.a<com.yelp.android.aa.g> c()
  {
    return d;
  }
  
  public com.bumptech.glide.load.e<a> d()
  {
    return c;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ah.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */