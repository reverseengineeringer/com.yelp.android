package com.bumptech.glide.load.engine.executor;

 enum FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$2
{
  FifoPriorityThreadPoolExecutor$UncaughtThrowableStrategy$2()
  {
    super(paramString, paramInt, null);
  }
  
  protected void handle(Throwable paramThrowable)
  {
    super.handle(paramThrowable);
    throw new RuntimeException(paramThrowable);
  }
}

/* Location:
 * Qualified Name:     com.bumptech.glide.load.engine.executor.FifoPriorityThreadPoolExecutor.UncaughtThrowableStrategy.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */