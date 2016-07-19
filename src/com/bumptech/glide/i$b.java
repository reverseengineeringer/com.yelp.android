package com.bumptech.glide;

import com.yelp.android.aa.l;

public final class i$b<A, T>
{
  private final l<A, T> b;
  private final Class<T> c;
  
  i$b(l<A, T> paraml, Class<T> paramClass)
  {
    b = paramClass;
    Class localClass;
    c = localClass;
  }
  
  public b<A, T>.a a(A paramA)
  {
    return new a(paramA);
  }
  
  public final class a
  {
    private final A b;
    private final Class<A> c;
    private final boolean d = true;
    
    a()
    {
      Object localObject;
      b = localObject;
      c = i.a(localObject);
    }
    
    public <Z> f<A, T, Z> a(Class<Z> paramClass)
    {
      paramClass = (f)i.e(a).a(new f(i.a(a), i.b(a), c, i.b.a(i.b.this), i.b.b(i.b.this), paramClass, i.c(a), i.d(a), i.e(a)));
      if (d) {
        paramClass.b(b);
      }
      return paramClass;
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.i.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */