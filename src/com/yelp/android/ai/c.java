package com.yelp.android.ai;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import android.os.SystemClock;

public final class c
{
  private static final double a;
  
  static
  {
    double d = 1.0D;
    if (17 <= Build.VERSION.SDK_INT) {
      d = 1.0D / Math.pow(10.0D, 6.0D);
    }
    a = d;
  }
  
  public static double a(long paramLong)
  {
    return (a() - paramLong) * a;
  }
  
  @TargetApi(17)
  public static long a()
  {
    if (17 <= Build.VERSION.SDK_INT) {
      return SystemClock.elapsedRealtimeNanos();
    }
    return System.currentTimeMillis();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.ai.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */