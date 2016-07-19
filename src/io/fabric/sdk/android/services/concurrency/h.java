package io.fabric.sdk.android.services.concurrency;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;

public class h
  extends ThreadPoolExecutor
{
  private static final int a = Runtime.getRuntime().availableProcessors();
  private static final int b = a + 1;
  private static final int c = a * 2 + 1;
  
  <T extends Runnable,  extends a,  extends i,  extends f> h(int paramInt1, int paramInt2, long paramLong, TimeUnit paramTimeUnit, DependencyPriorityBlockingQueue<T> paramDependencyPriorityBlockingQueue, ThreadFactory paramThreadFactory)
  {
    super(paramInt1, paramInt2, paramLong, paramTimeUnit, paramDependencyPriorityBlockingQueue, paramThreadFactory);
    prestartAllCoreThreads();
  }
  
  public static h a()
  {
    return a(b, c);
  }
  
  public static <T extends Runnable,  extends a,  extends i,  extends f> h a(int paramInt1, int paramInt2)
  {
    return new h(paramInt1, paramInt2, 1L, TimeUnit.SECONDS, new DependencyPriorityBlockingQueue(), new a(10));
  }
  
  protected void afterExecute(Runnable paramRunnable, Throwable paramThrowable)
  {
    i locali = (i)paramRunnable;
    locali.b(true);
    locali.a(paramThrowable);
    b().recycleBlockedQueue();
    super.afterExecute(paramRunnable, paramThrowable);
  }
  
  public DependencyPriorityBlockingQueue b()
  {
    return (DependencyPriorityBlockingQueue)super.getQueue();
  }
  
  public void execute(Runnable paramRunnable)
  {
    if (g.a(paramRunnable))
    {
      super.execute(paramRunnable);
      return;
    }
    super.execute(newTaskFor(paramRunnable, null));
  }
  
  protected <T> RunnableFuture<T> newTaskFor(Runnable paramRunnable, T paramT)
  {
    return new e(paramRunnable, paramT);
  }
  
  protected <T> RunnableFuture<T> newTaskFor(Callable<T> paramCallable)
  {
    return new e(paramCallable);
  }
  
  protected static final class a
    implements ThreadFactory
  {
    private final int a;
    
    public a(int paramInt)
    {
      a = paramInt;
    }
    
    public Thread newThread(Runnable paramRunnable)
    {
      paramRunnable = new Thread(paramRunnable);
      paramRunnable.setPriority(a);
      paramRunnable.setName("Queue");
      return paramRunnable;
    }
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */