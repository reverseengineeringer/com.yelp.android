package com.google.android.gms.internal;

import java.util.concurrent.Future;

final class hc$4
  implements Runnable
{
  hc$4(hp paramhp, Future paramFuture) {}
  
  public void run()
  {
    if (a.isCancelled()) {
      b.cancel(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */