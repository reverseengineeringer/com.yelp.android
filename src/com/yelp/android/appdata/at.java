package com.yelp.android.appdata;

import android.location.Location;

class at
  implements Runnable
{
  at(as paramas, LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, aa paramaa) {}
  
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
 * Qualified Name:     com.yelp.android.appdata.at
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */