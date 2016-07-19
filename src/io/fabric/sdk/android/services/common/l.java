package io.fabric.sdk.android.services.common;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

public final class l
{
  public static ExecutorService a(String paramString)
  {
    ExecutorService localExecutorService = Executors.newSingleThreadExecutor(c(paramString));
    a(paramString, localExecutorService);
    return localExecutorService;
  }
  
  private static final void a(String paramString, ExecutorService paramExecutorService)
  {
    a(paramString, paramExecutorService, 2L, TimeUnit.SECONDS);
  }
  
  public static final void a(String paramString, final ExecutorService paramExecutorService, final long paramLong, TimeUnit paramTimeUnit)
  {
    Runtime.getRuntime().addShutdownHook(new Thread(new h()
    {
      public void a()
      {
        try
        {
          c.h().a("Fabric", "Executing shutdown hook for " + a);
          paramExecutorService.shutdown();
          if (!paramExecutorService.awaitTermination(paramLong, d))
          {
            c.h().a("Fabric", a + " did not shut down in the" + " allocated time. Requesting immediate shutdown.");
            paramExecutorService.shutdownNow();
          }
          return;
        }
        catch (InterruptedException localInterruptedException)
        {
          c.h().a("Fabric", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", new Object[] { a }));
          paramExecutorService.shutdownNow();
        }
      }
    }, "Crashlytics Shutdown Hook for " + paramString));
  }
  
  public static ScheduledExecutorService b(String paramString)
  {
    ScheduledExecutorService localScheduledExecutorService = Executors.newSingleThreadScheduledExecutor(c(paramString));
    a(paramString, localScheduledExecutorService);
    return localScheduledExecutorService;
  }
  
  public static final ThreadFactory c(String paramString)
  {
    new ThreadFactory()
    {
      public Thread newThread(final Runnable paramAnonymousRunnable)
      {
        paramAnonymousRunnable = Executors.defaultThreadFactory().newThread(new h()
        {
          public void a()
          {
            paramAnonymousRunnable.run();
          }
        });
        paramAnonymousRunnable.setName(a + b.getAndIncrement());
        return paramAnonymousRunnable;
      }
    };
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.common.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */