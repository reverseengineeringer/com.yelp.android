package com.crashlytics.android.internal;

import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

final class bn
  extends bc
{
  bn(String paramString, ExecutorService paramExecutorService, long paramLong, TimeUnit paramTimeUnit) {}
  
  public final void a()
  {
    try
    {
      cl.a().b().a("Crashlytics", "Executing shutdown hook for " + a);
      b.shutdown();
      if (!b.awaitTermination(c, d))
      {
        cl.a().b().a("Crashlytics", a + " did not shut down in the allocated time. Requesting immediate shutdown.");
        b.shutdownNow();
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      cl.a().b().a("Crashlytics", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", new Object[] { a }));
      b.shutdownNow();
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.bn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */