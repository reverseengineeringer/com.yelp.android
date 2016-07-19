package com.yelp.android.appdata;

import android.location.Location;

class h$3
  implements Runnable
{
  h$3(h paramh, LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, LocationService.a parama) {}
  
  public void run()
  {
    if (!d.a(a, b, h.c(d)).booleanValue())
    {
      if (h.c(d) == null) {
        break label107;
      }
      BaseYelpApplication.a("LOCDEBUG", "Did not get location update, using old location: %s oldness: %s", new Object[] { h.c(d), Long.valueOf(LocationService.Recentness.getOldness(h.c(d).getTime())) });
    }
    for (;;)
    {
      d.a(c);
      c.a(h.c(d), false);
      return;
      label107:
      BaseYelpApplication.a("LOCDEBUG", "No location at all", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.h.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */