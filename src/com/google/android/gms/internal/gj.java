package com.google.android.gms.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@ey
public class gj<T>
  implements Future<T>
{
  private final Object mH = new Object();
  private boolean qj = false;
  private T wF = null;
  private boolean wG = false;
  
  public void a(T paramT)
  {
    synchronized (mH)
    {
      if (wG) {
        throw new IllegalStateException("Provided CallbackFuture with multiple values.");
      }
    }
    wG = true;
    wF = paramT;
    mH.notifyAll();
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    if (!paramBoolean) {
      return false;
    }
    synchronized (mH)
    {
      if (wG) {
        return false;
      }
    }
    qj = true;
    wG = true;
    mH.notifyAll();
    return true;
  }
  
  public T get()
  {
    synchronized (mH)
    {
      boolean bool = wG;
      if (bool) {}
    }
    try
    {
      mH.wait();
      if (qj)
      {
        throw new CancellationException("CallbackFuture was cancelled.");
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
      Object localObject3 = wF;
      return (T)localObject3;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  public T get(long paramLong, TimeUnit paramTimeUnit)
  {
    synchronized (mH)
    {
      boolean bool = wG;
      if (!bool) {}
      try
      {
        paramLong = paramTimeUnit.toMillis(paramLong);
        if (paramLong != 0L) {
          mH.wait(paramLong);
        }
      }
      catch (InterruptedException paramTimeUnit)
      {
        for (;;) {}
      }
      if (!wG) {
        throw new TimeoutException("CallbackFuture timed out.");
      }
    }
    if (qj) {
      throw new CancellationException("CallbackFuture was cancelled.");
    }
    paramTimeUnit = wF;
    return paramTimeUnit;
  }
  
  public boolean isCancelled()
  {
    synchronized (mH)
    {
      boolean bool = qj;
      return bool;
    }
  }
  
  public boolean isDone()
  {
    synchronized (mH)
    {
      boolean bool = wG;
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */