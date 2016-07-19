package com.yelp.android.di;

import sun.misc.Unsafe;

abstract class p<E>
  extends l<E>
{
  protected static final long e = y.a(p.class, "producerIndex");
  private volatile long producerIndex;
  
  public p(int paramInt)
  {
    super(paramInt);
  }
  
  protected final long b()
  {
    return producerIndex;
  }
  
  protected final void d(long paramLong)
  {
    y.a.putOrderedLong(this, e, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.di.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */