package com.crashlytics.android.internal;

import android.os.Process;

public abstract class bc
  implements Runnable
{
  protected abstract void a();
  
  public final void run()
  {
    Process.setThreadPriority(10);
    a();
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.internal.bc
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */