package com.yelp.android.t;

import java.util.concurrent.ThreadFactory;

public class b
  implements ThreadFactory
{
  int a = 0;
  
  public Thread newThread(Runnable paramRunnable)
  {
    paramRunnable = new c(this, paramRunnable, "fifo-pool-thread-" + a);
    a += 1;
    return paramRunnable;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.t.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */