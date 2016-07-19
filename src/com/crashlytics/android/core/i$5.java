package com.crashlytics.android.core;

import com.yelp.android.ax.d;
import io.fabric.sdk.android.c;
import io.fabric.sdk.android.k;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;

class i$5
  implements Callable<Boolean>
{
  i$5(i parami) {}
  
  public Boolean a()
    throws Exception
  {
    if (!i.a(a).get())
    {
      d locald = i.f(a).t();
      if (locald != null) {
        i.a(a, locald);
      }
      i.g(a);
      i.e(a);
      c.h().a("Fabric", "Open sessions were closed and a new session was opened.");
      return Boolean.valueOf(true);
    }
    c.h().a("Fabric", "Skipping session finalization because a crash has already occurred.");
    return Boolean.valueOf(false);
  }
}

/* Location:
 * Qualified Name:     com.crashlytics.android.core.i.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */