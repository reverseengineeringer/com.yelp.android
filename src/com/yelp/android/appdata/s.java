package com.yelp.android.appdata;

import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.Handler;
import android.util.Pair;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

public class s
  extends LocationService
{
  GoogleApiClient a;
  FusedLocationProviderApi b = LocationServices.FusedLocationApi;
  protected final WeakHashMap<aa, LocationListener> c;
  private final List<WeakReference<LocationListener>> e = new ArrayList();
  private Location f;
  private final LocationManager g;
  
  protected s(Context paramContext)
  {
    t localt = new t(this);
    u localu = new u(this);
    a = new GoogleApiClient.Builder(paramContext).addApi(LocationServices.API).addConnectionCallbacks(localt).addOnConnectionFailedListener(localu).build();
    g = ((LocationManager)paramContext.getSystemService("location"));
    c = new WeakHashMap();
  }
  
  private LocationRequest f()
  {
    LocationRequest localLocationRequest = LocationRequest.create();
    localLocationRequest.setPriority(100);
    localLocationRequest.setInterval(1000L);
    return localLocationRequest;
  }
  
  public Pair<Location, Boolean> a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness)
  {
    if (!a()) {
      throw new LocationService.NoProvidersException();
    }
    f = c();
    return new Pair(f, a(paramAccuracies, paramRecentness, f));
  }
  
  public void a(Context paramContext) {}
  
  public void a(Location paramLocation)
  {
    if (paramLocation == null)
    {
      b.setMockMode(a, false);
      return;
    }
    b.setMockMode(a, true);
    b.setMockLocation(a, paramLocation);
  }
  
  public void a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, aa paramaa)
  {
    a(paramAccuracies, paramRecentness, paramaa, 10000L);
  }
  
  public void a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, aa paramaa, long paramLong)
  {
    BaseYelpApplication.a("LOCDEBUG", "Request to Google Play Location: accuracy: " + paramAccuracies.getMeters() + " recentness: " + paramRecentness.getMillis(), new Object[0]);
    f = c();
    if (f != null) {
      BaseYelpApplication.a("LOCDEBUG", "Current best location: %s oldness: %s", new Object[] { f, Long.valueOf(LocationService.Recentness.getOldness(f.getTime())) });
    }
    if (a(paramAccuracies, paramRecentness, f).booleanValue())
    {
      BaseYelpApplication.a("LOCDEBUG", "Location already good", new Object[0]);
      paramaa.a(f, true);
      return;
    }
    if (!a())
    {
      paramaa.a();
      return;
    }
    BaseYelpApplication.a("LOCDEBUG", "Start waiting for location", new Object[0]);
    Handler localHandler = new Handler();
    v localv = new v(this, paramAccuracies, paramRecentness, paramaa);
    localHandler.postDelayed(localv, paramLong);
    paramAccuracies = new w(this, paramAccuracies, paramRecentness, paramaa, localHandler, localv);
    c.put(paramaa, paramAccuracies);
    if (a.isConnected())
    {
      b.requestLocationUpdates(a, f(), paramAccuracies);
      return;
    }
    e.add(new WeakReference(paramAccuracies));
    a.connect();
  }
  
  public void a(aa paramaa)
  {
    paramaa = (LocationListener)c.remove(paramaa);
    if (paramaa != null)
    {
      if (!a.isConnected()) {
        break label44;
      }
      b.removeLocationUpdates(a, paramaa);
    }
    for (;;)
    {
      return;
      label44:
      Iterator localIterator = e.iterator();
      while (localIterator.hasNext()) {
        if (((WeakReference)localIterator.next()).get() == paramaa) {
          localIterator.remove();
        }
      }
    }
  }
  
  public boolean a()
  {
    Iterator localIterator = g.getAllProviders().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      if ((g.isProviderEnabled(str)) && (!str.equals("passive"))) {
        return true;
      }
    }
    return false;
  }
  
  public void b(Context paramContext) {}
  
  public boolean b()
  {
    return a();
  }
  
  public Location c()
  {
    return b.getLastLocation(a);
  }
  
  public void d() {}
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */