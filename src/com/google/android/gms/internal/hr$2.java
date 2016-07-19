package com.google.android.gms.internal;

import java.util.List;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.atomic.AtomicInteger;

final class hr$2
  implements Runnable
{
  hr$2(AtomicInteger paramAtomicInteger, int paramInt, hp paramhp, List paramList) {}
  
  public void run()
  {
    if (a.incrementAndGet() >= b) {}
    try
    {
      c.b(hr.b(d));
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      gz.d("Unable to convert list of futures to a future of list", localInterruptedException);
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hr.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */