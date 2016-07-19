package com.google.android.gms.measurement;

import android.os.Process;

class h$c
  extends Thread
{
  h$c(Runnable paramRunnable, String paramString)
  {
    super(paramRunnable, paramString);
  }
  
  public void run()
  {
    Process.setThreadPriority(10);
    super.run();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.h.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */