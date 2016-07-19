package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.zzx;

class s
{
  final String a;
  final String b;
  final long c;
  final long d;
  final long e;
  
  s(String paramString1, String paramString2, long paramLong1, long paramLong2, long paramLong3)
  {
    zzx.zzcM(paramString1);
    zzx.zzcM(paramString2);
    if (paramLong1 >= 0L)
    {
      bool1 = true;
      zzx.zzac(bool1);
      if (paramLong2 < 0L) {
        break label81;
      }
    }
    label81:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      zzx.zzac(bool1);
      a = paramString1;
      b = paramString2;
      c = paramLong1;
      d = paramLong2;
      e = paramLong3;
      return;
      bool1 = false;
      break;
    }
  }
  
  s a()
  {
    return new s(a, b, c + 1L, d + 1L, e);
  }
  
  s a(long paramLong)
  {
    return new s(a, b, c, d, paramLong);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */