package com.yelp.android.e;

import java.util.Iterator;

final class h<T>
  implements Iterator<T>
{
  final int a;
  int b;
  int c;
  boolean d = false;
  
  h(g paramg, int paramInt)
  {
    a = paramInt;
    b = paramg.a();
  }
  
  public boolean hasNext()
  {
    return c < b;
  }
  
  public T next()
  {
    Object localObject = e.a(c, a);
    c += 1;
    d = true;
    return (T)localObject;
  }
  
  public void remove()
  {
    if (!d) {
      throw new IllegalStateException();
    }
    c -= 1;
    b -= 1;
    d = false;
    e.a(c);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.e.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */