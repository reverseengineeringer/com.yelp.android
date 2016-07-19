package com.google.android.gms.internal;

import android.os.SystemClock;

public final class jv
  implements jt
{
  private static jv a;
  
  public static jt d()
  {
    try
    {
      if (a == null) {
        a = new jv();
      }
      jv localjv = a;
      return localjv;
    }
    finally {}
  }
  
  public long a()
  {
    return System.currentTimeMillis();
  }
  
  public long b()
  {
    return SystemClock.elapsedRealtime();
  }
  
  public long c()
  {
    return System.nanoTime();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */