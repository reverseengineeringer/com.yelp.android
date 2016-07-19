package com.yelp.android.cz;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

class b$b
  implements Runnable, Future<Object>
{
  private final CountDownLatch a = new CountDownLatch(1);
  private boolean b;
  private ExecutionException c;
  
  static com.yelp.android.db.a b()
  {
    com.yelp.android.db.a locala = com.yelp.android.cv.a.a().b();
    if (locala != null) {
      com.yelp.android.cv.a.a().c();
    }
    g.a();
    g.c();
    return locala;
  }
  
  void a()
    throws Exception
  {
    b();
  }
  
  public boolean cancel(boolean paramBoolean)
  {
    return false;
  }
  
  public Object get()
    throws InterruptedException, ExecutionException
  {
    a.await();
    if (c == null) {
      return null;
    }
    throw c;
  }
  
  public Object get(long paramLong, TimeUnit paramTimeUnit)
    throws InterruptedException, ExecutionException, TimeoutException
  {
    a.await(paramLong, paramTimeUnit);
    if (c == null) {
      return null;
    }
    throw c;
  }
  
  public boolean isCancelled()
  {
    return false;
  }
  
  public boolean isDone()
  {
    return b;
  }
  
  public void run()
  {
    try
    {
      a();
      return;
    }
    catch (Throwable localThrowable)
    {
      c = new ExecutionException(localThrowable);
      return;
    }
    finally
    {
      b = true;
      a.countDown();
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.cz.b.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */