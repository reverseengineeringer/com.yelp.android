package com.yelp.android.ah;

import com.bumptech.glide.load.engine.i;

public class b
  implements i<a>
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
    i locali = a.b();
    if (locali != null) {
      locali.d();
    }
    locali = a.c();
    if (locali != null) {
      locali.d();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ah.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */