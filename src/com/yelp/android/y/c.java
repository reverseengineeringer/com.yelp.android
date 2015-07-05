package com.yelp.android.y;

import com.bumptech.glide.load.engine.t;

public class c<T>
  implements t<T>
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
 * Qualified Name:     com.yelp.android.y.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */