package com.google.android.gms.internal;

import android.os.Process;
import com.google.android.gms.ads.internal.s;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.atomic.AtomicInteger;

@fv
public final class hc
{
  private static final ExecutorService a = Executors.newFixedThreadPool(10, a("Default"));
  private static final ExecutorService b = Executors.newFixedThreadPool(5, a("Loader"));
  
  public static hs<Void> a(int paramInt, Runnable paramRunnable)
  {
    if (paramInt == 1) {
      a(b, new Callable()
      {
        public Void a()
        {
          a.run();
          return null;
        }
      });
    }
    a(a, new Callable()
    {
      public Void a()
      {
        a.run();
        return null;
      }
    });
  }
  
  public static hs<Void> a(Runnable paramRunnable)
  {
    return a(0, paramRunnable);
  }
  
  public static <T> hs<T> a(Callable<T> paramCallable)
  {
    return a(a, paramCallable);
  }
  
  public static <T> hs<T> a(ExecutorService paramExecutorService, final Callable<T> paramCallable)
  {
    hp localhp = new hp();
    try
    {
      localhp.b(new Runnable()
      {
        public void run()
        {
          try
          {
            Process.setThreadPriority(10);
            a.b(paramCallable.call());
            return;
          }
          catch (Exception localException)
          {
            s.h().a(localException, true);
            a.cancel(true);
          }
        }
      }
      {
        public void run()
        {
          if (a.isCancelled()) {
            b.cancel(true);
          }
        }
      });
      return localhp;
    }
    catch (RejectedExecutionException paramExecutorService)
    {
      gz.d("Thread execution is rejected.", paramExecutorService);
      localhp.cancel(true);
    }
    return localhp;
  }
  
  private static ThreadFactory a(String paramString)
  {
    new ThreadFactory()
    {
      private final AtomicInteger b = new AtomicInteger(1);
      
      public Thread newThread(Runnable paramAnonymousRunnable)
      {
        return new Thread(paramAnonymousRunnable, "AdWorker(" + a + ") #" + b.getAndIncrement());
      }
    };
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */