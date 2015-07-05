package com.yelp.android.util;

import java.lang.ref.Reference;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.SoftReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.atomic.AtomicInteger;

public class y<T>
{
  private final ReferenceQueue<? super T> a = new ReferenceQueue();
  private HashSet<Reference<T>> b = new HashSet();
  private final int c;
  private final AtomicInteger d;
  
  public y()
  {
    this(20);
  }
  
  public y(int paramInt)
  {
    c = paramInt;
    d = new AtomicInteger();
  }
  
  private final void b()
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
  
  public Set<T> a()
  {
    b();
    HashSet localHashSet = new HashSet();
    Iterator localIterator = b.iterator();
    while (localIterator.hasNext())
    {
      Object localObject = ((Reference)localIterator.next()).get();
      if (localObject != null) {
        localHashSet.add(localObject);
      }
    }
    d.set(b.size());
    return localHashSet;
  }
  
  public void a(T paramT)
  {
    b.add(new SoftReference(paramT, a));
    if (d.incrementAndGet() >= c) {
      b();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */