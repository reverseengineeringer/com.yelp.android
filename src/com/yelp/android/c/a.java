package com.yelp.android.c;

import android.os.AsyncTask;
import android.os.Build.VERSION;

public class a
{
  public static <Params, Progress, Result> AsyncTask<Params, Progress, Result> a(AsyncTask<Params, Progress, Result> paramAsyncTask, Params... paramVarArgs)
  {
    if (paramAsyncTask == null) {
      throw new IllegalArgumentException("task can not be null");
    }
    if (Build.VERSION.SDK_INT >= 11)
    {
      b.a(paramAsyncTask, paramVarArgs);
      return paramAsyncTask;
    }
    paramAsyncTask.execute(paramVarArgs);
    return paramAsyncTask;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */