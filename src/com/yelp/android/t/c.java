package com.yelp.android.t;

import android.os.Process;

class c
  extends Thread
{
  c(b paramb, Runnable paramRunnable, String paramString)
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
 * Qualified Name:     com.yelp.android.t.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */