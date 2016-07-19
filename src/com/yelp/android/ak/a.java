package com.yelp.android.ak;

import com.bumptech.glide.load.d;
import com.bumptech.glide.load.e;
import com.yelp.android.aa.l;
import com.yelp.android.ai.c;
import java.io.File;

public class a<A, T, Z, R>
  implements f<A, T, Z, R>, Cloneable
{
  private final f<A, T, Z, R> a;
  private d<File, Z> b;
  private d<T, Z> c;
  private e<Z> d;
  private c<Z, R> e;
  private com.bumptech.glide.load.a<T> f;
  
  public a(f<A, T, Z, R> paramf)
  {
    a = paramf;
  }
  
  public d<File, Z> a()
  {
    if (b != null) {
      return b;
    }
    return a.a();
  }
  
  public void a(com.bumptech.glide.load.a<T> parama)
  {
    f = parama;
  }
  
  public void a(d<T, Z> paramd)
  {
    c = paramd;
  }
  
  public d<T, Z> b()
  {
    if (c != null) {
      return c;
    }
    return a.b();
  }
  
  public com.bumptech.glide.load.a<T> c()
  {
    if (f != null) {
      return f;
    }
    return a.c();
  }
  
  public e<Z> d()
  {
    if (d != null) {
      return d;
    }
    return a.d();
  }
  
  public l<A, T> e()
  {
    return a.e();
  }
  
  public c<Z, R> f()
  {
    if (e != null) {
      return e;
    }
    return a.f();
  }
  
  public a<A, T, Z, R> g()
  {
    try
    {
      a locala = (a)super.clone();
      return locala;
    }
    catch (CloneNotSupportedException localCloneNotSupportedException)
    {
      throw new RuntimeException(localCloneNotSupportedException);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ak.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */