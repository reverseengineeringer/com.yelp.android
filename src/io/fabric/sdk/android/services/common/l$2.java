package io.fabric.sdk.android.services.common;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.TimeUnit;

final class l$2
  extends h
{
  l$2(String paramString, ExecutorService paramExecutorService, long paramLong, TimeUnit paramTimeUnit) {}
  
  public void a()
  {
    try
    {
      c.h().a("Fabric", "Executing shutdown hook for " + a);
      b.shutdown();
      if (!b.awaitTermination(c, d))
      {
        c.h().a("Fabric", a + " did not shut down in the" + " allocated time. Requesting immediate shutdown.");
        b.shutdownNow();
      }
      return;
    }
    catch (InterruptedException localInterruptedException)
    {
      c.h().a("Fabric", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", new Object[] { a }));
      b.shutdownNow();
    }
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.common.l.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */