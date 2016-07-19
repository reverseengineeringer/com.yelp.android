package com.bumptech.glide.load.engine.executor;

import android.util.Log;

 enum FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$1
{
  FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$1()
  {
    super(paramString, paramInt, null);
  }
  
  protected void handle(Throwable paramThrowable)
  {
    if (Log.isLoggable("PriorityExecutor", 6)) {
      Log.e("PriorityExecutor", "Request threw uncaught throwable", paramThrowable);
    }
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.executor.FifoPriorityThreadPoolExecutor.UncaughtThrowableStrategy.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */