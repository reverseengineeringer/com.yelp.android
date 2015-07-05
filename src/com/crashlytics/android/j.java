package com.crashlytics.android;

import com.crashlytics.android.internal.ci;
import com.crashlytics.android.internal.cl;

final class j
  implements Runnable
{
  j(bb parambb, Runnable paramRunnable) {}
  
  public final void run()
  {
    try
    {
      a.run();
      return;
    }
    catch (Exception localException)
    {
      cl.a().b().a("Crashlytics", "Failed to execute task.", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */