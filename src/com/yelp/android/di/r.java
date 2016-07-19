package com.yelp.android.di;

import sun.misc.Unsafe;

public final class r<E>
  extends w<E>
{
  public r(int paramInt)
  {
    super(paramInt);
  }
  
  private long a()
  {
    return y.a.getLongVolatile(this, f);
  }
  
  private long b()
  {
    return y.a.getLongVolatile(this, e);
  }
  
  private void d(long paramLong)
  {
    y.a.putOrderedLong(this, f, paramLong);
  }
  
  private void e(long paramLong)
  {
    y.a.putOrderedLong(this, e, paramLong);
  }
  
  public boolean isEmpty()
  {
    return a() == b();
  }
  
  public boolean offer(E paramE)
  {
    if (paramE == null) {
      throw new NullPointerException("null elements not allowed");
    }
    Object[] arrayOfObject = c;
    long l1 = producerIndex;
    long l2 = a(l1);
    if (b(arrayOfObject, l2) != null) {
      return false;
    }
    d(l1 + 1L);
    b(arrayOfObject, l2, paramE);
    return true;
  }
  
  public E peek()
  {
    return (E)c(a(consumerIndex));
  }
  
  public E poll()
  {
    long l1 = consumerIndex;
    long l2 = a(l1);
    Object[] arrayOfObject = c;
    Object localObject = b(arrayOfObject, l2);
    if (localObject == null) {
      return null;
    }
    e(l1 + 1L);
    b(arrayOfObject, l2, null);
    return (E)localObject;
  }
  
  public int size()
  {
    long l2;
    for (long l1 = b();; l1 = l2)
    {
      long l3 = a();
      l2 = b();
      if (l1 == l2) {
        return (int)(l3 - l2);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.di.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */