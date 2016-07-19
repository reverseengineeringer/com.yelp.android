package com.bumptech.glide.load.engine.executor;

import android.os.Process;

class FifoPriorityThreadPoolExecutor$a$1
  extends Thread
{
  FifoPriorityThreadPoolExecutor$a$1(FifoPriorityThreadPoolExecutor.a parama, Runnable paramRunnable, String paramString)
  {
    super(paramRunnable, paramString);
  }
  
  public void run()
  {
    Process.setThreadPriority(10);
    super.run();
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.executor.FifoPriorityThreadPoolExecutor.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */