package com.yelp.android.appdata;

import android.location.GpsStatus;
import android.location.Location;
import android.location.LocationManager;
import android.os.SystemClock;
import com.yelp.android.util.YelpLog;
import java.util.LinkedList;

class ay
  implements Runnable
{
  ay(ax paramax) {}
  
  public void run()
  {
    if (ax.b(a))
    {
      boolean bool2 = ax.c(a).isEmpty();
      bool1 = bool2;
      if (!bool2)
      {
        long l = ((Location)ax.c(a).getFirst()).getTime();
        if (SystemClock.elapsedRealtime() - l < ax.d(a).getTimeToFirstFix()) {
          break label155;
        }
      }
    }
    label155:
    for (boolean bool1 = true;; bool1 = false)
    {
      if (bool1)
      {
        ax.a(a, 15000L);
        YelpLog.i(ax.a(a), String.format("Spinning down GPS to %d seconds, probably indoors", new Object[] { Long.valueOf(15L) }));
        ax.e(a).removeUpdates(a);
        ax.e(a).requestLocationUpdates(ax.a(a), ax.f(a), 5.0F, a);
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */