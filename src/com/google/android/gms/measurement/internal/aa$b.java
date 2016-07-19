package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.zzx;

class aa$b
  implements Runnable
{
  private final aa.a a;
  private final int b;
  private final Throwable c;
  private final byte[] d;
  private final String e;
  
  private aa$b(String paramString, aa.a parama, int paramInt, Throwable paramThrowable, byte[] paramArrayOfByte)
  {
    zzx.zzz(parama);
    a = parama;
    b = paramInt;
    c = paramThrowable;
    d = paramArrayOfByte;
    e = paramString;
  }
  
  public void run()
  {
    a.a(e, b, c, d);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.aa.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */