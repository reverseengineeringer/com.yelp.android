package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.s;

@fv
public class hl
{
  private long a;
  private long b = Long.MIN_VALUE;
  private Object c = new Object();
  
  public hl(long paramLong)
  {
    a = paramLong;
  }
  
  public boolean a()
  {
    synchronized (c)
    {
      long l = s.i().b();
      if (b + a > l) {
        return false;
      }
      b = l;
      return true;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */