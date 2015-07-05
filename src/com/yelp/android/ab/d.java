package com.yelp.android.ab;

import android.content.Context;
import com.bumptech.glide.load.a;
import com.yelp.android.aa.c;
import com.yelp.android.v.p;
import java.io.File;
import java.io.InputStream;

public class d
  implements com.yelp.android.ae.b<InputStream, b>
{
  private final o a;
  private final r b;
  private final p c;
  private final c<b> d;
  
  public d(Context paramContext, com.bumptech.glide.load.engine.bitmap_recycle.e parame)
  {
    a = new o(paramContext, parame);
    d = new c(a);
    b = new r(parame);
    c = new p();
  }
  
  public com.bumptech.glide.load.d<File, b> a()
  {
    return d;
  }
  
  public com.bumptech.glide.load.d<InputStream, b> b()
  {
    return a;
  }
  
  public a<InputStream> c()
  {
    return c;
  }
  
  public com.bumptech.glide.load.e<b> d()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ab.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */