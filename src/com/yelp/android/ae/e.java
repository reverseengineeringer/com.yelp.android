package com.yelp.android.ae;

import com.bumptech.glide.load.a;
import com.bumptech.glide.load.d;
import com.yelp.android.ad.c;
import com.yelp.android.v.m;
import java.io.File;

public class e<A, T, Z, R>
  implements f<A, T, Z, R>
{
  private final m<A, T> a;
  private final c<Z, R> b;
  private final b<T, Z> c;
  
  public e(m<A, T> paramm, c<Z, R> paramc, b<T, Z> paramb)
  {
    if (paramm == null) {
      throw new NullPointerException("ModelLoader must not be null");
    }
    a = paramm;
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
  
  public m<A, T> e()
  {
    return a;
  }
  
  public c<Z, R> f()
  {
    return b;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ae.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */