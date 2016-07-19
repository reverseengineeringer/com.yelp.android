package com.kahuna.sdk;

import android.util.Log;

public class k
  implements Runnable
{
  private final Runnable a;
  
  public k(Runnable paramRunnable)
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
      while (!l.a) {}
      Log.w("Kahuna", "Exception while running background task: " + localRuntimeException);
      localRuntimeException.printStackTrace();
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */