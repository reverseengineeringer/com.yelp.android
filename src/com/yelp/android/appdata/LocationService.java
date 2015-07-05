package com.yelp.android.appdata;

import android.content.Context;
import android.location.Location;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.gms.common.GooglePlayServicesUtil;

public abstract class LocationService
  implements ar
{
  protected long d = SystemClock.elapsedRealtime();
  
  public static final LocationService c(Context paramContext)
  {
    if (GooglePlayServicesUtil.isGooglePlayServicesAvailable(paramContext) == 0) {
      return new s(paramContext);
    }
    return new as(paramContext);
  }
  
  public abstract Pair<Location, Boolean> a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness);
  
  protected Boolean a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, Location paramLocation)
  {
    if ((paramAccuracies.satisfies(paramLocation)) && (paramRecentness.satisfies(paramLocation))) {
      return Boolean.valueOf(true);
    }
    return Boolean.valueOf(false);
  }
  
  public abstract void a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, aa paramaa);
  
  public abstract void a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, aa paramaa, long paramLong);
  
  public abstract void a(aa paramaa);
  
  public abstract boolean a();
  
  public abstract boolean b();
  
  public abstract Location c();
  
  public abstract void d();
  
  public void e()
  {
    d = SystemClock.elapsedRealtime();
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.LocationService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */