package com.yelp.android.appdata;

import android.location.Location;

class p$1
  implements Runnable
{
  p$1(p paramp, LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, LocationService.a parama) {}
  
  public void run()
  {
    Location localLocation = d.c();
    if (!d.a(a, b, localLocation).booleanValue())
    {
      if (localLocation == null) {
        break label85;
      }
      BaseYelpApplication.a("LOCDEBUG", "Did not get location update, using old location: %s oldness: %s", new Object[] { localLocation, Long.valueOf(LocationService.Recentness.getOldness(localLocation.getTime())) });
    }
    for (;;)
    {
      d.a(c);
      c.a(localLocation, false);
      return;
      label85:
      BaseYelpApplication.a("LOCDEBUG", "No location at all", new Object[0]);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.p.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */