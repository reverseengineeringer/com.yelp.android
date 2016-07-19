package com.google.android.gms.measurement;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

class h$b
  implements ThreadFactory
{
  private static final AtomicInteger a = new AtomicInteger();
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new h.c(paramRunnable, "measurement-" + a.incrementAndGet());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.h.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */