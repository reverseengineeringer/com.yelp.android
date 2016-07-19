package com.bumptech.glide.load.engine.executor;

import android.util.Log;

public enum FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy
{
  IGNORE,  LOG,  THROW;
  
  private FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy() {}
  
  protected void handle(Throwable paramThrowable) {}
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.executor.FifoPriorityThreadPoolExecutor.UncaughtThrowableStrategy
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */