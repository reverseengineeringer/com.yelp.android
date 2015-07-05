package com.yelp.android.ac;

import com.bumptech.glide.load.engine.t;

public class b
  implements t<a>
{
  private final a a;
  
  public b(a parama)
  {
    if (parama == null) {
      throw new NullPointerException("Data must not be null");
    }
    a = parama;
  }
  
  public a a()
  {
    return a;
  }
  
  public int c()
  {
    return a.a();
  }
  
  public void d()
  {
    t localt = a.b();
    if (localt != null) {
      localt.d();
    }
    localt = a.c();
    if (localt != null) {
      localt.d();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ac.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */