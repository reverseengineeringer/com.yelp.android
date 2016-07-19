package io.fabric.sdk.android.services.common;

import android.os.Process;

public abstract class h
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
 * Qualified Name:     io.fabric.sdk.android.services.common.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */