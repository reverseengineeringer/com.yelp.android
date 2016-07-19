package io.fabric.sdk.android.services.common;

import java.util.concurrent.Executors;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicLong;

final class l$1
  implements ThreadFactory
{
  l$1(String paramString, AtomicLong paramAtomicLong) {}
  
  public Thread newThread(final Runnable paramRunnable)
  {
    paramRunnable = Executors.defaultThreadFactory().newThread(new h()
    {
      public void a()
      {
        paramRunnable.run();
      }
    });
    paramRunnable.setName(a + b.getAndIncrement());
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.common.l.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */