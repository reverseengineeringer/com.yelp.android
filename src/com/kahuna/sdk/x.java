package com.kahuna.sdk;

import android.util.Log;

public class x
  implements Runnable
{
  private final Runnable a;
  
  public x(Runnable paramRunnable)
  {
    a = paramRunnable;
  }
  
  public void run()
  {
    try
    {
      a.run();
      return;
    }
    catch (RuntimeException localRuntimeException)
    {
      while (!h.a) {}
      Log.w("KahunaAnalytics", "Exception while running background task: " + localRuntimeException);
      localRuntimeException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */