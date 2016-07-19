package io.fabric.sdk.android.services.concurrency;

import java.util.LinkedList;
import java.util.concurrent.Executor;

class AsyncTask$c
  implements Executor
{
  final LinkedList<Runnable> a = new LinkedList();
  Runnable b;
  
  protected void a()
  {
    try
    {
      Runnable localRunnable = (Runnable)a.poll();
      b = localRunnable;
      if (localRunnable != null) {
        AsyncTask.b.execute(b);
      }
      return;
    }
    finally {}
  }
  
  public void execute(final Runnable paramRunnable)
  {
    try
    {
      a.offer(new Runnable()
      {
        public void run()
        {
          try
          {
            paramRunnable.run();
            return;
          }
          finally
          {
            a();
          }
        }
      });
      if (b == null) {
        a();
      }
      return;
    }
    finally
    {
      paramRunnable = finally;
      throw paramRunnable;
    }
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.AsyncTask.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */