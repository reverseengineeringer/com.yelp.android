package com.google.android.gms.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ThreadFactory;

@ey
public final class gh
{
  private static final ThreadFactory ww = new gh.3();
  private static final ExecutorService wx = Executors.newFixedThreadPool(10, ww);
  
  public static Future<Void> a(Runnable paramRunnable)
  {
    return submit(new gh.1(paramRunnable));
  }
  
  public static <T> Future<T> submit(Callable<T> paramCallable)
  {
    try
    {
      paramCallable = wx.submit(new gh.2(paramCallable));
      return paramCallable;
    }
    catch (RejectedExecutionException paramCallable)
    {
      gr.d("Thread execution is rejected.", paramCallable);
    }
    return new gk(null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */