package com.yelp.android.di;

abstract class q<E>
  extends o<E>
{
  private volatile long f;
  
  public q(int paramInt)
  {
    super(paramInt);
  }
  
  protected final long c()
  {
    return f;
  }
  
  protected final void e(long paramLong)
  {
    f = paramLong;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.di.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */