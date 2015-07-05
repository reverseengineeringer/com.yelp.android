package com.kahuna.sdk;

import android.util.Log;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.atomic.AtomicInteger;

class r
  extends TimerTask
{
  r(q paramq) {}
  
  public void run()
  {
    for (;;)
    {
      try
      {
        synchronized ()
        {
          localh = h.a();
          if (h.l(localh) != null)
          {
            h.l(localh).cancel();
            h.a(localh, null);
          }
          int i = h.h(localh).get();
          if (i > 0) {
            return;
          }
        }
      }
      catch (Exception localException)
      {
        h localh;
        if (!h.a) {
          continue;
        }
        Log.d("KahunaAnalytics", "Handled exception in KahunaAnalytics.stop() timer: " + localException);
        continue;
      }
      synchronized (h.p(localh))
      {
        if (h.q(localh) != null)
        {
          h.q(localh).cancel();
          h.a(localh, null);
        }
        h.b(localh, "k_app_bg");
        return;
        localObject3 = finally;
        throw ((Throwable)localObject3);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */