package com.yelp.android.di;

import sun.misc.Unsafe;

abstract class e<E>
  extends g<E>
{
  private static final long e = y.a(e.class, "consumerIndex");
  private volatile long consumerIndex;
  
  public e(int paramInt)
  {
    super(paramInt);
  }
  
  protected final long a()
  {
    return consumerIndex;
  }
  
  protected final boolean b(long paramLong1, long paramLong2)
  {
    return y.a.compareAndSwapLong(this, e, paramLong1, paramLong2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.di.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */