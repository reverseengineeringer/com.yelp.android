package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class hc$5
  implements ThreadFactory
{
  private final AtomicInteger b = new AtomicInteger(1);
  
  hc$5(String paramString) {}
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "AdWorker(" + a + ") #" + b.getAndIncrement());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */