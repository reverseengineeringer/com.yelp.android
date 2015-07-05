package com.kahuna.sdk;

import android.util.Log;
import java.util.Timer;
import java.util.concurrent.atomic.AtomicInteger;

final class q
  implements Runnable
{
  public void run()
  {
    h localh;
    synchronized ()
    {
      localh = h.a();
      int i = h.h(localh).decrementAndGet();
      if (h.a) {
        Log.d("KahunaAnalytics", "Called stop, remaining activities in foreground is: " + i);
      }
      if (i == 0)
      {
        if (h.l(localh) != null)
        {
          h.l(localh).cancel();
          h.a(localh, null);
        }
        h.a(localh, new Timer());
        h.l(localh).schedule(new r(this), 5000L);
        synchronized (h.d(localh))
        {
          ag.a(h.e(localh), h.a(localh));
        }
      }
    }
    synchronized (h.f(localh))
    {
      ag.a(h.g(localh), h.a(localh));
      return;
      localObject2 = finally;
      throw ((Throwable)localObject2);
      localObject3 = finally;
      throw ((Throwable)localObject3);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */