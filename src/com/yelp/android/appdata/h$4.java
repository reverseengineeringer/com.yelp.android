package com.yelp.android.appdata;

import android.location.Location;
import android.os.Handler;
import com.google.android.gms.location.j;

class h$4
  implements j
{
  h$4(h paramh, LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, LocationService.a parama, Handler paramHandler, Runnable paramRunnable) {}
  
  public void a(Location paramLocation)
  {
    BaseYelpApplication.a("LOCDEBUG", "Received location updated from Google Play", new Object[0]);
    h.a(f, paramLocation);
    if (f.a(a, b, h.c(f)).booleanValue())
    {
      BaseYelpApplication.a("LOCDEBUG", "Got an awesome location: %s oldness: %s", new Object[] { h.c(f), Long.valueOf(LocationService.Recentness.getOldness(h.c(f).getTime())) });
      c.a(h.c(f), true);
      f.a(c);
      d.removeCallbacks(e);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.h.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */