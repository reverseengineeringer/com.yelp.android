package com.google.android.gms.internal;

import java.util.concurrent.TimeUnit;

final class ix$e
{
  private int a = 0;
  
  public void a()
  {
    try
    {
      a += 1;
      return;
    }
    finally
    {
      localObject = finally;
      throw ((Throwable)localObject);
    }
  }
  
  public boolean a(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException
  {
    long l1 = System.currentTimeMillis();
    paramLong = TimeUnit.MILLISECONDS.convert(paramLong, paramTimeUnit);
    for (;;)
    {
      try
      {
        if (a == 0) {
          return true;
        }
        if (paramLong <= 0L) {
          return false;
        }
      }
      finally {}
      wait(paramLong);
      long l2 = System.currentTimeMillis();
      paramLong -= l2 - l1;
    }
  }
  
  public void b()
  {
    try
    {
      if (a == 0) {
        throw new RuntimeException("too many decrements");
      }
    }
    finally {}
    a -= 1;
    if (a == 0) {
      notifyAll();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ix.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */