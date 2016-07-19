package com.bumptech.glide.load.engine.executor;

import android.os.Process;
import android.util.Log;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;

public class FifoPriorityThreadPoolExecutor
  extends ThreadPoolExecutor
{
  private final AtomicInteger a = new AtomicInteger();
  private final UncaughtThrowableStrategy b;
  
  public FifoPriorityThreadPoolExecutor(int paramInt)
  {
    this(paramInt, UncaughtThrowableStrategy.LOG);
  }
  
  public FifoPriorityThreadPoolExecutor(int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, ThreadFactory paramThreadFactory, UncaughtThrowableStrategy paramUncaughtThrowableStrategy)
  {
    super(paramInt1, paramInt2, paramLong, paramTimeUnit, new PriorityBlockingQueue(), paramThreadFactory);
    b = paramUncaughtThrowableStrategy;
  }
  
  public FifoPriorityThreadPoolExecutor(int paramInt, UncaughtThrowableStrategy paramUncaughtThrowableStrategy)
  {
    this(paramInt, paramInt, 0L, TimeUnit.MILLISECONDS, new a(), paramUncaughtThrowableStrategy);
  }
  
  protected void afterExecute(Runnable paramRunnable, Throwable paramThrowable)
  {
    super.afterExecute(paramRunnable, paramThrowable);
    if ((paramThrowable == null) && ((paramRunnable instanceof Future)))
    {
      paramRunnable = (Future)paramRunnable;
      if ((!paramRunnable.isDone()) || (paramRunnable.isCancelled())) {}
    }
    try
    {
      paramRunnable.get();
      return;
    }
    catch (InterruptedException paramRunnable)
    {
      b.handle(paramRunnable);
      return;
    }
    catch (ExecutionException paramRunnable)
    {
      b.handle(paramRunnable);
    }
  }
  
  protected <T> RunnableFuture<T> newTaskFor(Runnable paramRunnable, T paramT)
  {
    return new b(paramRunnable, paramT, a.getAndIncrement());
  }
  
  public static enum UncaughtThrowableStrategy
  {
    IGNORE,  LOG,  THROW;
    
    private UncaughtThrowableStrategy() {}
    
    protected void handle(Throwable paramThrowable) {}
  }
  
  public static class a
    implements ThreadFactory
  {
    int a = 0;
    
    public Thread newThread(Runnable paramRunnable)
    {
      paramRunnable = new Thread(paramRunnable, "fifo-pool-thread-" + a)
      {
        public void run()
        {
          Process.setThreadPriority(10);
          super.run();
        }
      };
      a += 1;
      return paramRunnable;
    }
  }
  
  static class b<T>
    extends FutureTask<T>
    implements Comparable<b<?>>
  {
    private final int a;
    private final int b;
    
    public b(Runnable paramRunnable, T paramT, int paramInt)
    {
      super(paramT);
      if (!(paramRunnable instanceof a)) {
        throw new IllegalArgumentException("FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized");
      }
      a = ((a)paramRunnable).b();
      b = paramInt;
    }
    
    public int a(b<?> paramb)
    {
      int j = a - a;
      int i = j;
      if (j == 0) {
        i = b - b;
      }
      return i;
    }
    
    public boolean equals(Object paramObject)
    {
      boolean bool2 = false;
      boolean bool1 = bool2;
      if ((paramObject instanceof b))
      {
        paramObject = (b)paramObject;
        bool1 = bool2;
        if (b == b)
        {
          bool1 = bool2;
          if (a == a) {
            bool1 = true;
          }
        }
      }
      return bool1;
    }
    
    public int hashCode()
    {
      return a * 31 + b;
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.executor.FifoPriorityThreadPoolExecutor
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */