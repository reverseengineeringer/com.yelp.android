package com.google.android.gms.analytics.internal;

import com.google.android.gms.internal.jt;

public class e
{
  private final long a;
  private final int b;
  private double c;
  private long d;
  private final Object e = new Object();
  private final String f;
  private final jt g;
  
  public e(int paramInt, long paramLong, String paramString, jt paramjt)
  {
    b = paramInt;
    c = b;
    a = paramLong;
    f = paramString;
    g = paramjt;
  }
  
  public e(String paramString, jt paramjt)
  {
    this(60, 2000L, paramString, paramjt);
  }
  
  public boolean a()
  {
    synchronized (e)
    {
      long l = g.a();
      if (c < b)
      {
        double d1 = (l - d) / a;
        if (d1 > 0.0D) {
          c = Math.min(b, d1 + c);
        }
      }
      d = l;
      if (c >= 1.0D)
      {
        c -= 1.0D;
        return true;
      }
      f.c("Excessive " + f + " detected; call ignored.");
      return false;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */