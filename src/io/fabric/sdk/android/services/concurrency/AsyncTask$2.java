package io.fabric.sdk.android.services.concurrency;

import android.os.Process;
import java.util.concurrent.atomic.AtomicBoolean;

class AsyncTask$2
  extends AsyncTask.d<Params, Result>
{
  AsyncTask$2(AsyncTask paramAsyncTask)
  {
    super(null);
  }
  
  public Result call()
    throws Exception
  {
    AsyncTask.a(a).set(true);
    Process.setThreadPriority(10);
    return (Result)AsyncTask.a(a, a.a(b));
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.AsyncTask.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */