package com.yelp.android.cn;

import android.os.SystemClock;

public class a
{
  protected long a;
  protected long b;
  
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
 * Qualified Name:     com.yelp.android.cn.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */