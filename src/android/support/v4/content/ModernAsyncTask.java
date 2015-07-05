package android.support.v4.content;

import android.os.Message;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicBoolean;

abstract class ModernAsyncTask<Params, Progress, Result>
{
  private static final ThreadFactory a = new y();
  private static final BlockingQueue<Runnable> b = new LinkedBlockingQueue(10);
  private static final ad c = new ad(null);
  public static final Executor d = new ThreadPoolExecutor(5, 128, 1L, TimeUnit.SECONDS, b, a);
  private static volatile Executor e = d;
  private final ae<Params, Result> f = new z(this);
  private final FutureTask<Result> g = new aa(this, f);
  private volatile ModernAsyncTask.Status h = ModernAsyncTask.Status.PENDING;
  private final AtomicBoolean i = new AtomicBoolean();
  
  private void c(Result paramResult)
  {
    if (!i.get()) {
      d(paramResult);
    }
  }
  
  private Result d(Result paramResult)
  {
    c.obtainMessage(1, new ac(this, new Object[] { paramResult })).sendToTarget();
    return paramResult;
  }
  
  private void e(Result paramResult)
  {
    if (c()) {
      b(paramResult);
    }
    for (;;)
    {
      h = ModernAsyncTask.Status.FINISHED;
      return;
      a(paramResult);
    }
  }
  
  public final ModernAsyncTask<Params, Progress, Result> a(Executor paramExecutor, Params... paramVarArgs)
  {
    if (h != ModernAsyncTask.Status.PENDING) {}
    switch (ab.a[h.ordinal()])
    {
    default: 
      h = ModernAsyncTask.Status.RUNNING;
      b();
      f.b = paramVarArgs;
      paramExecutor.execute(g);
      return this;
    case 1: 
      throw new IllegalStateException("Cannot execute task: the task is already running.");
    }
    throw new IllegalStateException("Cannot execute task: the task has already been executed (a task can be executed only once)");
  }
  
  protected abstract Result a(Params... paramVarArgs);
  
  protected void a() {}
  
  protected void a(Result paramResult) {}
  
  public final boolean a(boolean paramBoolean)
  {
    return g.cancel(paramBoolean);
  }
  
  protected void b() {}
  
  protected void b(Result paramResult)
  {
    a();
  }
  
  protected void b(Progress... paramVarArgs) {}
  
  public final boolean c()
  {
    return g.isCancelled();
  }
}

/* Location:
 * Qualified Name:     android.support.v4.content.ModernAsyncTask
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */