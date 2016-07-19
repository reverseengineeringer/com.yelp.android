package com.yelp.android.appdata;

import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationManager;
import android.os.SystemClock;
import com.yelp.android.util.YelpLog;
import java.util.LinkedList;

class p$c$1
  implements Runnable
{
  p$c$1(p.c paramc) {}
  
  public void run()
  {
    if (p.c.b(a))
    {
      boolean bool2 = p.c.c(a).isEmpty();
      bool1 = bool2;
      if (!bool2)
      {
        long l = ((Location)p.c.c(a).getFirst()).getTime();
        if (SystemClock.elapsedRealtime() - l < p.c.d(a).getTimeToFirstFix()) {
          break label155;
        }
      }
    }
    label155:
    for (boolean bool1 = true;; bool1 = false)
    {
      if (bool1)
      {
        p.c.a(a, 15000L);
        YelpLog.i(p.c.a(a), String.format("Spinning down GPS to %d seconds, probably indoors", new Object[] { Long.valueOf(15L) }));
        p.c.e(a).removeUpdates(a);
        p.c.e(a).requestLocationUpdates(p.c.a(a), p.c.f(a), 5.0F, a);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.p.c.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */