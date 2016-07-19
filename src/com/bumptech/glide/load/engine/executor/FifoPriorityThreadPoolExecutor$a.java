package com.bumptech.glide.load.engine.executor;

import android.os.Process;
import java.util.concurrent.ThreadFactory;

public class FifoPriorityThreadPoolExecutor$a
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

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.executor.FifoPriorityThreadPoolExecutor.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */