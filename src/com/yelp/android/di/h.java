package com.yelp.android.di;

import sun.misc.Unsafe;

abstract class h<E>
  extends f<E>
{
  private static final long e = y.a(h.class, "producerIndex");
  private volatile long producerIndex;
  
  public h(int paramInt)
  {
    super(paramInt);
  }
  
  protected final long b()
  {
    return producerIndex;
  }
  
  protected final boolean c(long paramLong1, long paramLong2)
  {
    return y.a.compareAndSwapLong(this, e, paramLong1, paramLong2);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.di.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */