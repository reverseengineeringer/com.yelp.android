package com.google.android.gms.internal;

import android.os.Process;
import com.google.android.gms.ads.internal.s;
import java.util.concurrent.Callable;

final class hc$3
  implements Runnable
{
  hc$3(hp paramhp, Callable paramCallable) {}
  
  public void run()
  {
    try
    {
      Process.setThreadPriority(10);
      a.b(b.call());
      return;
    }
    catch (Exception localException)
    {
      s.h().a(localException, true);
      a.cancel(true);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.hc.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */