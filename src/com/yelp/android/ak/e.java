package com.yelp.android.ak;

import com.bumptech.glide.load.a;
import com.bumptech.glide.load.d;
import com.yelp.android.aa.l;
import com.yelp.android.ai.c;
import java.io.File;

public class e<A, T, Z, R>
  implements f<A, T, Z, R>
{
  private final l<A, T> a;
  private final c<Z, R> b;
  private final b<T, Z> c;
  
  public e(l<A, T> paraml, c<Z, R> paramc, b<T, Z> paramb)
  {
    if (paraml == null) {
      throw new NullPointerException("ModelLoader must not be null");
    }
    a = paraml;
    if (paramc == null) {
      throw new NullPointerException("Transcoder must not be null");
    }
    b = paramc;
    if (paramb == null) {
      throw new NullPointerException("DataLoadProvider must not be null");
    }
    c = paramb;
  }
  
  public d<File, Z> a()
  {
    return c.a();
  }
  
  public d<T, Z> b()
  {
    return c.b();
  }
  
  public a<T> c()
  {
    return c.c();
  }
  
  public com.bumptech.glide.load.e<Z> d()
  {
    return c.d();
  }
  
  public l<A, T> e()
  {
    return a;
  }
  
  public c<Z, R> f()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ak.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */