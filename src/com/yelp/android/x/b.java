package com.yelp.android.x;

import java.util.Queue;

abstract class b<T extends h>
{
  private final Queue<T> a = com.yelp.android.ao.h.a(20);
  
  public void a(T paramT)
  {
    if (a.size() < 20) {
      a.offer(paramT);
    }
  }
  
  protected abstract T b();
  
  protected T c()
  {
    h localh2 = (h)a.poll();
    h localh1 = localh2;
    if (localh2 == null) {
      localh1 = b();
    }
    return localh1;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.x.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */