package com.yelp.android.util;

import android.os.AsyncTask;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;

public abstract class q<Params, Progress, Result>
  extends AsyncTask<Params, Progress, Result>
{
  public static final ExecutorService c = Executors.newFixedThreadPool(10);
  
  public q<Params, Progress, Result> a(Executor paramExecutor, Params... paramVarArgs)
  {
    Executor localExecutor = paramExecutor;
    if (paramExecutor == null) {
      localExecutor = THREAD_POOL_EXECUTOR;
    }
    executeOnExecutor(localExecutor, paramVarArgs);
    return this;
  }
  
  public q<Params, Progress, Result> b(Params... paramVarArgs)
  {
    a(null, paramVarArgs);
    return this;
  }
  
  public q<Params, Progress, Result> c(Params... paramVarArgs)
  {
    a(c, paramVarArgs);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.util.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */