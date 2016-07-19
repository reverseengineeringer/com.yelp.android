package io.fabric.sdk.android.services.concurrency;

import java.util.concurrent.Executor;

class c$a<Result>
  implements Executor
{
  private final Executor a;
  private final c b;
  
  public c$a(Executor paramExecutor, c paramc)
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
        return c.a.a(c.a.this);
      }
    });
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */