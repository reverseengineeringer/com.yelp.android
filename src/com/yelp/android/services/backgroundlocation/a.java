package com.yelp.android.services.backgroundlocation;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.location.Location;
import android.preference.PreferenceManager;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.location.f;
import com.google.android.gms.location.h;
import com.yelp.android.appdata.PermissionGroup;
import com.yelp.android.appdata.experiment.BackgroundLocationExperiment;
import com.yelp.android.appdata.experiment.e;
import com.yelp.android.appdata.k;
import com.yelp.android.util.YelpLog;
import com.yelp.android.util.r;
import java.util.List;
import java.util.concurrent.TimeUnit;

public class a
{
  public static final long a = TimeUnit.MINUTES.toMillis(10L);
  public static final int b = (int)TimeUnit.MINUTES.toMillis(5L);
  private static final long c = TimeUnit.MINUTES.toMillis(20L);
  private final Context d;
  private final c e;
  private final b f;
  private final com.yelp.android.appdata.c g;
  private final AlarmManager h;
  private final com.path.android.jobqueue.b i;
  private final r j;
  private final GoogleApiAvailability k;
  
  public a(Context paramContext, c paramc, b paramb, com.yelp.android.appdata.c paramc1, AlarmManager paramAlarmManager, com.path.android.jobqueue.b paramb1, r paramr, GoogleApiAvailability paramGoogleApiAvailability)
  {
    d = paramContext;
    e = paramc;
    f = paramb;
    g = paramc1;
    h = paramAlarmManager;
    i = paramb1;
    j = paramr;
    k = paramGoogleApiAvailability;
  }
  
  private void a(Location paramLocation, boolean paramBoolean)
  {
    YelpLog.v("BackgroundLocation", "Starting job to report location to api and add new geofence.");
    i.a(new LocationUploadJob(paramLocation.getLatitude(), paramLocation.getLongitude(), paramLocation.getAccuracy(), paramBoolean));
  }
  
  private void e()
  {
    Object localObject = new Intent(d, WatchDogTimerService.class);
    localObject = PendingIntent.getService(d, 0, (Intent)localObject, 134217728);
    h.set(0, j.a() + f(), (PendingIntent)localObject);
  }
  
  private long f()
  {
    return g.b(c + a);
  }
  
  private void g()
  {
    f.a(b);
  }
  
  public void a()
  {
    YelpLog.v("BackgroundLocation", "Starting Location tracking. adding a new geofence at current location.");
    if (!k.a(d, PermissionGroup.LOCATION)) {}
    while (k.isGooglePlayServicesAvailable(d) != 0) {
      return;
    }
    e();
    g();
  }
  
  public void a(double paramDouble1, double paramDouble2, double paramDouble3, int paramInt)
  {
    e.a(paramDouble1, paramDouble2, paramDouble3, paramInt);
  }
  
  public void a(long paramLong)
  {
    g.c(a + paramLong);
  }
  
  public void a(Location paramLocation)
  {
    a(paramLocation, false);
  }
  
  public void a(h paramh)
  {
    if (paramh.a()) {
      YelpLog.v("BackgroundLocation", "Geofencing event error" + paramh.b());
    }
    do
    {
      return;
      e();
    } while (paramh.d() == null);
    f localf = (f)paramh.d().get(0);
    int m = paramh.c();
    switch (m)
    {
    case 3: 
    default: 
      YelpLog.remoteError("BackgroundLocation", "Unrecogonized geofence transition with code: " + m);
      return;
    case 1: 
      YelpLog.v("BackgroundLocation", "Entered geofence: " + localf);
      return;
    case 2: 
      YelpLog.v("BackgroundLocation", "Exited geofence: " + localf);
      a(paramh.e(), false);
      return;
    }
    YelpLog.d("BackgroundLocation", "Idle in geofence " + localf);
    a(paramh.e(), true);
  }
  
  public void b()
  {
    e.a();
    Object localObject = new Intent(d, WatchDogTimerService.class);
    localObject = PendingIntent.getService(d, 0, (Intent)localObject, 134217728);
    h.cancel((PendingIntent)localObject);
  }
  
  public void c()
  {
    YelpLog.v("BackgroundLocation", "Watchdog restarting tracking.");
    a();
  }
  
  public boolean d()
  {
    boolean bool2 = false;
    boolean bool1 = bool2;
    if (PreferenceManager.getDefaultSharedPreferences(d).getBoolean(d.getString(2131166959), false))
    {
      bool1 = bool2;
      if (e.k.a()) {
        bool1 = true;
      }
    }
    return bool1;
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.backgroundlocation.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */