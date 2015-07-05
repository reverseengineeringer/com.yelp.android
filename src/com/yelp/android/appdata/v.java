package com.yelp.android.appdata;

import android.location.Location;

class v
  implements Runnable
{
  v(s params, LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, aa paramaa) {}
  
  public void run()
  {
    if (!d.a(a, b, s.c(d)).booleanValue())
    {
      if (s.c(d) == null) {
        break label107;
      }
      BaseYelpApplication.a("LOCDEBUG", "Did not get location update, using old location: %s oldness: %s", new Object[] { s.c(d), Long.valueOf(LocationService.Recentness.getOldness(s.c(d).getTime())) });
    }
    for (;;)
    {
      d.a(c);
      c.a(s.c(d), false);
      return;
      label107:
      BaseYelpApplication.a("LOCDEBUG", "No location at all", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */