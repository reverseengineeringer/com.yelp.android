package com.google.android.gms.measurement.internal;

import com.google.android.gms.common.internal.zzx;

final class af$b
  implements Thread.UncaughtExceptionHandler
{
  private final String b;
  
  public af$b(af paramaf, String paramString)
  {
    zzx.zzz(paramString);
    b = paramString;
  }
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    try
    {
      a.s().b().a(b, paramThrowable);
      return;
    }
    finally
    {
      paramThread = finally;
      throw paramThread;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.af.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */