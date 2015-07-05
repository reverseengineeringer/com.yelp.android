package com.google.android.gms.internal;

import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

final class gh$3
  implements ThreadFactory
{
  private final AtomicInteger wA = new AtomicInteger(1);
  
  public Thread newThread(Runnable paramRunnable)
  {
    return new Thread(paramRunnable, "AdWorker #" + wA.getAndIncrement());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gh.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */