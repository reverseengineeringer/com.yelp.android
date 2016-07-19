package com.yelp.android.util;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.HashSet;
import java.util.concurrent.atomic.AtomicInteger;

public class o<T>
{
  private final ReferenceQueue<? super T> a = new ReferenceQueue();
  private HashSet<Reference<T>> b = new HashSet();
  private final int c;
  private final AtomicInteger d;
  
  public o()
  {
    this(20);
  }
  
  public o(int paramInt)
  {
    c = paramInt;
    d = new AtomicInteger();
  }
  
  private final void a()
  {
    for (;;)
    {
      Object localObject = a.poll();
      if (localObject == null) {
        break;
      }
      localObject = ((Reference)localObject).get();
      if (localObject != null) {
        b.remove(localObject);
      }
    }
  }
  
  public void a(T paramT)
  {
    b.add(new SoftReference(paramT, a));
    if (d.incrementAndGet() >= c) {
      a();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */