package com.yelp.android.ad;

import com.bumptech.glide.load.engine.i;

public class c<T>
  implements i<T>
{
  protected final T a;
  
  public c(T paramT)
  {
    if (paramT == null) {
      throw new NullPointerException("Data must not be null");
    }
    a = paramT;
  }
  
  public final T b()
  {
    return (T)a;
  }
  
  public final int c()
  {
    return 1;
  }
  
  public void d() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.ad.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */