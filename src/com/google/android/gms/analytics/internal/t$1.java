package com.google.android.gms.analytics.internal;

class t$1
  implements Thread.UncaughtExceptionHandler
{
  t$1(t paramt) {}
  
  public void uncaughtException(Thread paramThread, Throwable paramThrowable)
  {
    paramThread = a.g();
    if (paramThread != null) {
      paramThread.e("Job execution failed", paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.t.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */