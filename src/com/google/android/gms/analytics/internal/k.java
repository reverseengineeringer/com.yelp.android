package com.google.android.gms.analytics.internal;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;

class k
{
  private final jt a;
  private long b;
  
  public k(jt paramjt)
  {
    zzx.zzz(paramjt);
    a = paramjt;
  }
  
  public k(jt paramjt, long paramLong)
  {
    zzx.zzz(paramjt);
    a = paramjt;
    b = paramLong;
  }
  
  public void a()
  {
    b = a.b();
  }
  
  public boolean a(long paramLong)
  {
    if (b == 0L) {}
    while (a.b() - b > paramLong) {
      return true;
    }
    return false;
  }
  
  public void b()
  {
    b = 0L;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */