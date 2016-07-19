package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;

class g
{
  private final jt a;
  private long b;
  
  public g(jt paramjt)
  {
    zzx.zzz(paramjt);
    a = paramjt;
  }
  
  public void a()
  {
    b = a.b();
  }
  
  public boolean a(long paramLong)
  {
    if (b == 0L) {}
    while (a.b() - b >= paramLong) {
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
 * Qualified Name:     com.google.android.gms.measurement.internal.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */