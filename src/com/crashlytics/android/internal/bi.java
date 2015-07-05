package com.crashlytics.android.internal;

import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;

public class bi
{
  public static ExecutorService a(String paramString)
  {
    ExecutorService localExecutorService = Executors.newSingleThreadExecutor(c(paramString));
    a(paramString, localExecutorService);
    return localExecutorService;
  }
  
  private static void a(String paramString, ExecutorService paramExecutorService)
  {
    TimeUnit localTimeUnit = TimeUnit.SECONDS;
    Runtime.getRuntime().addShutdownHook(new Thread(new bn(paramString, paramExecutorService, 2L, localTimeUnit), "Crashlytics Shutdown Hook for " + paramString));
  }
  
  public static ScheduledExecutorService b(String paramString)
  {
    ScheduledExecutorService localScheduledExecutorService = Executors.newSingleThreadScheduledExecutor(c(paramString));
    a(paramString, localScheduledExecutorService);
    return localScheduledExecutorService;
  }
  
  public static ThreadFactory c(String paramString)
  {
    return new bl(paramString, new AtomicLong(1L));
  }
  
  public long a()
  {
    return System.currentTimeMillis();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */