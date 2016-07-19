package com.crashlytics.android.core;

import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;

class f$1
  implements Runnable
{
  f$1(f paramf, Runnable paramRunnable) {}
  
  public void run()
  {
    try
    {
      a.run();
      return;
    }
    catch (Exception localException)
    {
      c.h().e("Fabric", "Failed to execute task.", localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.f.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */