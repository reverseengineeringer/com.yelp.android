package com.bugsnag.android;

import java.util.concurrent.Executor;
import java.util.concurrent.Executors;

class Async
{
  private static final Executor executor = ;
  
  static void run(Runnable paramRunnable)
  {
    executor.execute(paramRunnable);
  }
}

/* Location:
 * Qualified Name:     com.bugsnag.android.Async
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */