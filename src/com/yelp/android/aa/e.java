package com.yelp.android.aa;

import com.bumptech.glide.load.d;
import com.yelp.android.v.p;
import java.io.File;
import java.io.InputStream;

public class e
  implements com.yelp.android.ae.b<InputStream, File>
{
  private static final g a = new g(null);
  private final d<File, File> b = new a();
  private final com.bumptech.glide.load.a<InputStream> c = new p();
  
  public d<File, File> a()
  {
    return b;
  }
  
  public d<InputStream, File> b()
  {
    return a;
  }
  
  public com.bumptech.glide.load.a<InputStream> c()
  {
    return c;
  }
  
  public com.bumptech.glide.load.e<File> d()
  {
    return com.yelp.android.y.b.b();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.aa.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */