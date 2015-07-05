package com.yelp.android.t;

import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class a
  extends ThreadPoolExecutor
{
  AtomicInteger a = new AtomicInteger();
  
  public a(int paramInt)
  {
    this(paramInt, paramInt, 0L, TimeUnit.MILLISECONDS, new b());
  }
  
  public a(int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, ThreadFactory paramThreadFactory)
  {
    super(paramInt1, paramInt2, paramLong, paramTimeUnit, new PriorityBlockingQueue(), paramThreadFactory);
  }
  
  protected <T> RunnableFuture<T> newTaskFor(Runnable paramRunnable, T paramT)
  {
    return new d(paramRunnable, paramT, a.getAndIncrement());
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.t.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */