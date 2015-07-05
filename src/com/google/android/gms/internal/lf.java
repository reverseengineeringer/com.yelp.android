package com.google.android.gms.internal;

import android.os.SystemClock;

public final class lf
  implements ld
{
  private static lf Of;
  
  public static ld jdMethod_if()
  {
    try
    {
      if (Of == null) {
        Of = new lf();
      }
      lf locallf = Of;
      return locallf;
    }
    finally {}
  }
  
  public long currentTimeMillis()
  {
    return System.currentTimeMillis();
  }
  
  public long elapsedRealtime()
  {
    return SystemClock.elapsedRealtime();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.lf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */