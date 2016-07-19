package com.google.android.gms.internal;

import java.util.concurrent.CancellationException;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@fv
public class hp<T>
  implements hs<T>
{
  private final Object a = new Object();
  private T b = null;
  private boolean c = false;
  private boolean d = false;
  private final ht e = new ht();
  
  public void a(Runnable paramRunnable)
  {
    e.a(paramRunnable);
  }
  
  public void b(T paramT)
  {
    synchronized (a)
    {
      if (d) {
        return;
      }
      if (c) {
        throw new IllegalStateException("Provided CallbackFuture with multiple values.");
      }
    }
    c = true;
    b = paramT;
    a.notifyAll();
    e.a();
  }
  
  public void b(Runnable paramRunnable)
  {
    e.b(paramRunnable);
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    if (!paramBoolean) {
      return false;
    }
    synchronized (a)
    {
      if (c) {
        return false;
      }
    }
    d = true;
    c = true;
    a.notifyAll();
    e.a();
    return true;
  }
  
  public T get()
  {
    synchronized (a)
    {
      boolean bool = c;
      if (bool) {}
    }
    try
    {
      a.wait();
      if (d)
      {
        throw new CancellationException("CallbackFuture was cancelled.");
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
      Object localObject3 = b;
      return (T)localObject3;
    }
    catch (InterruptedException localInterruptedException)
    {
      for (;;) {}
    }
  }
  
  public T get(long paramLong, TimeUnit paramTimeUnit)
    throws TimeoutException
  {
    synchronized (a)
    {
      boolean bool = c;
      if (!bool) {}
      try
      {
        paramLong = paramTimeUnit.toMillis(paramLong);
        if (paramLong != 0L) {
          a.wait(paramLong);
        }
      }
      catch (InterruptedException paramTimeUnit)
      {
        for (;;) {}
      }
      if (!c) {
        throw new TimeoutException("CallbackFuture timed out.");
      }
    }
    if (d) {
      throw new CancellationException("CallbackFuture was cancelled.");
    }
    paramTimeUnit = b;
    return paramTimeUnit;
  }
  
  public boolean isCancelled()
  {
    synchronized (a)
    {
      boolean bool = d;
      return bool;
    }
  }
  
  public boolean isDone()
  {
    synchronized (a)
    {
      boolean bool = c;
      return bool;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */