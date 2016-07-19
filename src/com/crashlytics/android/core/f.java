package com.crashlytics.android.core;

import android.os.Looper;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.TimeUnit;

class f
{
  private final ExecutorService a;
  
  public f(ExecutorService paramExecutorService)
  {
    a = paramExecutorService;
  }
  
  <T> T a(Callable<T> paramCallable)
  {
    try
    {
      if (Looper.getMainLooper() == Looper.myLooper()) {
        return (T)a.submit(paramCallable).get(4L, TimeUnit.SECONDS);
      }
      paramCallable = a.submit(paramCallable).get();
      return paramCallable;
    }
    catch (RejectedExecutionException paramCallable)
    {
      c.h().a("Fabric", "Executor is shut down because we're handling a fatal crash.");
      return null;
    }
    catch (Exception paramCallable)
    {
      c.h().e("Fabric", "Failed to execute task.", paramCallable);
    }
    return null;
  }
  
  Future<?> a(final Runnable paramRunnable)
  {
    try
    {
      paramRunnable = a.submit(new Runnable()
      {
        public void run()
        {
          try
          {
            paramRunnable.run();
            return;
          }
          catch (Exception localException)
          {
            c.h().e("Fabric", "Failed to execute task.", localException);
          }
        }
      });
      return paramRunnable;
    }
    catch (RejectedExecutionException paramRunnable)
    {
      c.h().a("Fabric", "Executor is shut down because we're handling a fatal crash.");
    }
    return null;
  }
  
  <T> Future<T> b(final Callable<T> paramCallable)
  {
    try
    {
      paramCallable = a.submit(new Callable()
      {
        public T call()
          throws Exception
        {
          try
          {
            Object localObject = paramCallable.call();
            return (T)localObject;
          }
          catch (Exception localException)
          {
            c.h().e("Fabric", "Failed to execute task.", localException);
          }
          return null;
        }
      });
      return paramCallable;
    }
    catch (RejectedExecutionException paramCallable)
    {
      c.h().a("Fabric", "Executor is shut down because we're handling a fatal crash.");
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */