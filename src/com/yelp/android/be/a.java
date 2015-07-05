package com.yelp.android.be;

import android.os.SystemClock;

public class a
{
  private long a;
  private long b;
  
  public long a()
  {
    a = SystemClock.elapsedRealtime();
    return a;
  }
  
  public void a(long paramLong)
  {
    a = paramLong;
  }
  
  public long b()
  {
    b = SystemClock.elapsedRealtime();
    return b;
  }
  
  protected long c()
  {
    return b - a;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.be.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */