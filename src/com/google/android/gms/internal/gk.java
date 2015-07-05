package com.google.android.gms.internal;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@ey
public class gk<T>
  implements Future<T>
{
  private final T wF;
  
  public gk(T paramT)
  {
    wF = paramT;
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    return false;
  }
  
  public T get()
  {
    return (T)wF;
  }
  
  public T get(long paramLong, TimeUnit paramTimeUnit)
  {
    return (T)wF;
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
 * Qualified Name:     com.google.android.gms.internal.gk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */