package com.google.android.gms.internal;

import android.os.Process;

class kk
  implements Runnable
{
  private final Runnable a;
  private final int b;
  
  public kk(Runnable paramRunnable, int paramInt)
  {
    a = paramRunnable;
    b = paramInt;
  }
  
  public void run()
  {
    Process.setThreadPriority(b);
    a.run();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */