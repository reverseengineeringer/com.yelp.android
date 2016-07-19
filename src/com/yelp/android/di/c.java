package com.yelp.android.di;

import sun.misc.Unsafe;

public abstract class c<E>
  extends a<E>
{
  private static final long e;
  private static final int f;
  protected final long[] d;
  
  static
  {
    if (8 == y.a.arrayIndexScale(long[].class))
    {
      f = a + 3;
      e = y.a.arrayBaseOffset(long[].class) + (32 << f - a);
      return;
    }
    throw new IllegalStateException("Unexpected long[] element size");
  }
  
  public c(int paramInt)
  {
    super(paramInt);
    paramInt = (int)(b + 1L);
    d = new long[(paramInt << a) + 64];
    for (long l = 0L; l < paramInt; l += 1L) {
      a(d, d(l), l);
    }
  }
  
  protected final long a(long[] paramArrayOfLong, long paramLong)
  {
    return y.a.getLongVolatile(paramArrayOfLong, paramLong);
  }
  
  protected final void a(long[] paramArrayOfLong, long paramLong1, long paramLong2)
  {
    y.a.putOrderedLong(paramArrayOfLong, paramLong1, paramLong2);
  }
  
  protected final long d(long paramLong)
  {
    return e + ((b & paramLong) << f);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.di.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */