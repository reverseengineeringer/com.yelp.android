package com.yelp.android.ui.map;

import com.google.android.gms.maps.c.b;
import com.google.android.gms.maps.model.c;

public abstract interface e<T>
  extends c.b
{
  public abstract void a();
  
  public abstract void a(a<T> parama);
  
  public abstract void a(T paramT, c paramc);
  
  public abstract T e(c paramc);
  
  public static abstract interface a<T>
  {
    public abstract void a(T paramT);
    
    public abstract void b(T paramT);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ui.map.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */