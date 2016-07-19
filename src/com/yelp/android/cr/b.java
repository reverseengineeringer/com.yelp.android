package com.yelp.android.cr;

import android.content.Context;

public class b<T>
  extends a<T>
{
  private T a;
  
  public b()
  {
    this(null);
  }
  
  public b(c<T> paramc)
  {
    super(paramc);
  }
  
  protected T a(Context paramContext)
  {
    return (T)a;
  }
  
  protected void a(Context paramContext, T paramT)
  {
    a = paramT;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cr.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */