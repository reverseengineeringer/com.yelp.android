package io.fabric.sdk.android.services.concurrency;

import java.util.Collection;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;

public abstract class c<Params, Progress, Result>
  extends AsyncTask<Params, Progress, Result>
  implements a<i>, f, i
{
  private final g a = new g();
  
  public void a(i parami)
  {
    if (I_() != AsyncTask.Status.PENDING) {
      throw new IllegalStateException("Must not add Dependency after task is running");
    }
    ((a)g()).c(parami);
  }
  
  public void a(Throwable paramThrowable)
  {
    ((i)g()).a(paramThrowable);
  }
  
  public final void a(ExecutorService paramExecutorService, Params... paramVarArgs)
  {
    super.a(new a(paramExecutorService, this), paramVarArgs);
  }
  
  public Priority b()
  {
    return ((f)g()).b();
  }
  
  public void b(boolean paramBoolean)
  {
    ((i)g()).b(paramBoolean);
  }
  
  public Collection<i> c()
  {
    return ((a)g()).c();
  }
  
  public int compareTo(Object paramObject)
  {
    return Priority.compareTo(this, paramObject);
  }
  
  public boolean d()
  {
    return ((a)g()).d();
  }
  
  public boolean f()
  {
    return ((i)g()).f();
  }
  
  public <T extends a<i>,  extends f,  extends i> T g()
  {
    return a;
  }
  
  private static class a<Result>
    implements Executor
  {
    private final Executor a;
    private final c b;
    
    public a(Executor paramExecutor, c paramc)
    {
      a = paramExecutor;
      b = paramc;
    }
    
    public void execute(Runnable paramRunnable)
    {
      a.execute(new e(paramRunnable, null)
      {
        public <T extends a<i>,  extends f,  extends i> T a()
        {
          return c.this;
        }
      });
    }
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */