package com.google.android.gms.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;

final class hr$1
  implements Runnable
{
  hr$1(hp paramhp, hr.a parama, hs paramhs) {}
  
  public void run()
  {
    try
    {
      a.b(b.a(c.get()));
      return;
    }
    catch (ExecutionException localExecutionException)
    {
      a.cancel(true);
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
    catch (CancellationException localCancellationException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hr.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */