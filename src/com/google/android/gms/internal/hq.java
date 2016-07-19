package com.google.android.gms.internal;

import java.util.concurrent.TimeUnit;

@fv
public class hq<T>
  implements hs<T>
{
  private final T a;
  private final ht b;
  
  public hq(T paramT)
  {
    a = paramT;
    b = new ht();
    b.a();
  }
  
  public void a(Runnable paramRunnable)
  {
    b.a(paramRunnable);
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    return false;
  }
  
  public T get()
  {
    return (T)a;
  }
  
  public T get(long paramLong, TimeUnit paramTimeUnit)
  {
    return (T)a;
  }
  
  public boolean isCancelled()
  {
    return false;
  }
  
  public boolean isDone()
  {
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */