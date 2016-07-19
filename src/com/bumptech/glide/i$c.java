package com.bumptech.glide;

import com.yelp.android.aa.l;
import java.io.InputStream;

public final class i$c<T>
{
  private final l<T, InputStream> b;
  
  i$c(l<T, InputStream> paraml)
  {
    l locall;
    b = locall;
  }
  
  public d<T> a(Class<T> paramClass)
  {
    return (d)i.e(a).a(new d(paramClass, b, null, i.a(a), i.b(a), i.c(a), i.d(a), i.e(a)));
  }
  
  public d<T> a(T paramT)
  {
    return (d)a(i.a(paramT)).a(paramT);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.i.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */