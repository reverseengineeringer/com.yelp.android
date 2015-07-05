package com.yelp.android.appdata;

import android.location.Location;
import android.os.Handler;
import com.google.android.gms.location.LocationListener;

class w
  implements LocationListener
{
  w(s params, LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, aa paramaa, Handler paramHandler, Runnable paramRunnable) {}
  
  public void onLocationChanged(Location paramLocation)
  {
    BaseYelpApplication.a("LOCDEBUG", "Received location updated from Google Play", new Object[0]);
    s.a(f, paramLocation);
    if (f.a(a, b, s.c(f)).booleanValue())
    {
      BaseYelpApplication.a("LOCDEBUG", "Got an awesome location: %s oldness: %s", new Object[] { s.c(f), Long.valueOf(LocationService.Recentness.getOldness(s.c(f).getTime())) });
      c.a(s.c(f), true);
      f.a(c);
      d.removeCallbacks(e);
    }
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.w
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */