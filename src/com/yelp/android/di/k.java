package com.yelp.android.di;

import sun.misc.Unsafe;

abstract class k<E>
  extends m<E>
{
  protected static final long d = y.a(k.class, "consumerIndex");
  private volatile long consumerIndex;
  
  public k(int paramInt)
  {
    super(paramInt);
  }
  
  protected final long a()
  {
    return consumerIndex;
  }
  
  protected final boolean b(long paramLong1, long paramLong2)
  {
    return y.a.compareAndSwapLong(this, d, paramLong1, paramLong2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.di.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */