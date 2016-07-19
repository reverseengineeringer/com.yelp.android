package io.fabric.sdk.android.services.concurrency;

import android.os.Handler;
import android.os.Looper;
import android.os.Message;

class AsyncTask$b
  extends Handler
{
  public AsyncTask$b()
  {
    super(Looper.getMainLooper());
  }
  
  public void handleMessage(Message paramMessage)
  {
    AsyncTask.a locala = (AsyncTask.a)obj;
    switch (what)
    {
    default: 
      return;
    case 1: 
      AsyncTask.c(a, b[0]);
      return;
    }
    a.b(b);
  }
}

/* Location:
 * Qualified Name:     io.fabric.sdk.android.services.concurrency.AsyncTask.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */