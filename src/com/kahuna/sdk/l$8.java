package com.kahuna.sdk;

import android.util.Log;
import com.kahuna.sdk.location.i;
import java.util.List;
import java.util.concurrent.atomic.AtomicLong;

class l$8
  implements Runnable
{
  l$8(l paraml) {}
  
  public void run()
  {
    u.a(l.j(), l.a(a));
    if (!l.b(a)) {
      l.c(a);
    }
    q.a(l.a(a));
    f.a();
    y.a(l.a(a));
    try
    {
      i.a(l.j());
      locala = s.a(l.a(a), false);
    }
    catch (Throwable localThrowable)
    {
      synchronized (l.d(a))
      {
        a locala;
        l.a(a, locala.a());
        if (!l.e(a).isEmpty()) {}
        Object localObject1;
        for (Event localEvent = (Event)l.e(a).get(l.e(a).size() - 1);; localObject1 = null)
        {
          if ((localEvent == null) || (localEvent.k() <= 0L)) {
            break label234;
          }
          l.f(a).set(localEvent.k() + 1L);
          c.a(l.e(a));
          l.a(a, locala.b());
          l.a(a, locala.c());
          return;
          localThrowable = localThrowable;
          if (!l.a) {
            break;
          }
          Log.w("Kahuna", "Caught error when attepmting to initialize location services. If you are NOT using location services please ignore this error: ");
          Log.w("Kahuna", localThrowable);
          break;
        }
        label234:
        l.f(a).set(s.n(l.a(a)));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.l.8
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */