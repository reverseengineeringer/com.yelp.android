package com.yelp.android.appdata;

import android.annotation.SuppressLint;
import android.content.Context;
import android.location.Location;
import android.location.LocationManager;
import android.os.Bundle;
import android.os.Handler;
import android.util.Pair;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.e;
import com.google.android.gms.location.j;
import com.google.android.gms.location.l;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.WeakHashMap;

@SuppressLint({"MissingPermission"})
public class h
  extends LocationService
{
  GoogleApiClient a;
  e b = l.b;
  protected final WeakHashMap<LocationService.a, j> c;
  private final List<WeakReference<j>> e = new ArrayList();
  private Location f;
  private final LocationManager g;
  
  protected h(Context paramContext)
  {
    GoogleApiClient.ConnectionCallbacks local1 = new GoogleApiClient.ConnectionCallbacks()
    {
      public void onConnected(Bundle paramAnonymousBundle)
      {
        paramAnonymousBundle = h.a(h.this).iterator();
        while (paramAnonymousBundle.hasNext())
        {
          WeakReference localWeakReference = (WeakReference)paramAnonymousBundle.next();
          if (localWeakReference.get() != null) {
            b.a(a, h.b(h.this), (j)localWeakReference.get());
          }
        }
        h.a(h.this).clear();
      }
      
      public void onConnectionSuspended(int paramAnonymousInt) {}
    };
    GoogleApiClient.OnConnectionFailedListener local2 = new GoogleApiClient.OnConnectionFailedListener()
    {
      public void onConnectionFailed(ConnectionResult paramAnonymousConnectionResult) {}
    };
    a = new GoogleApiClient.Builder(paramContext).addApi(l.a).addConnectionCallbacks(local1).addOnConnectionFailedListener(local2).build();
    g = ((LocationManager)paramContext.getSystemService("location"));
    c = new WeakHashMap();
  }
  
  private LocationRequest e()
  {
    LocationRequest localLocationRequest = LocationRequest.a();
    localLocationRequest.a(100);
    localLocationRequest.a(1000L);
    return localLocationRequest;
  }
  
  public Pair<Location, Boolean> a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness)
    throws LocationService.NoProvidersException
  {
    if (!a()) {
      throw new LocationService.NoProvidersException();
    }
    f = c();
    return new Pair(f, a(paramAccuracies, paramRecentness, f));
  }
  
  public void a(Context paramContext) {}
  
  public void a(LocationService.Accuracies paramAccuracies, LocationService.Recentness paramRecentness, LocationService.a parama)
  {
    a(paramAccuracies, paramRecentness, parama, 10000L);
  }
  
  public void a(final LocationService.Accuracies paramAccuracies, final LocationService.Recentness paramRecentness, final LocationService.a parama, long paramLong)
  {
    BaseYelpApplication.a("LOCDEBUG", "Request to Google Play Location: accuracy: " + paramAccuracies.getMeters() + " recentness: " + paramRecentness.getMillis(), new Object[0]);
    f = c();
    if (f != null) {
      BaseYelpApplication.a("LOCDEBUG", "Current best location: %s oldness: %s", new Object[] { f, Long.valueOf(LocationService.Recentness.getOldness(f.getTime())) });
    }
    if (a(paramAccuracies, paramRecentness, f).booleanValue())
    {
      BaseYelpApplication.a("LOCDEBUG", "Location already good", new Object[0]);
      parama.a(f, true);
      return;
    }
    if (!a())
    {
      parama.a();
      return;
    }
    BaseYelpApplication.a("LOCDEBUG", "Start waiting for location", new Object[0]);
    final Handler localHandler = new Handler();
    final Runnable local3 = new Runnable()
    {
      public void run()
      {
        if (!a(paramAccuracies, paramRecentness, h.c(h.this)).booleanValue())
        {
          if (h.c(h.this) == null) {
            break label107;
          }
          BaseYelpApplication.a("LOCDEBUG", "Did not get location update, using old location: %s oldness: %s", new Object[] { h.c(h.this), Long.valueOf(LocationService.Recentness.getOldness(h.c(h.this).getTime())) });
        }
        for (;;)
        {
          a(parama);
          parama.a(h.c(h.this), false);
          return;
          label107:
          BaseYelpApplication.a("LOCDEBUG", "No location at all", new Object[0]);
        }
      }
    };
    localHandler.postDelayed(local3, paramLong);
    paramAccuracies = new j()
    {
      public void a(Location paramAnonymousLocation)
      {
        BaseYelpApplication.a("LOCDEBUG", "Received location updated from Google Play", new Object[0]);
        h.a(h.this, paramAnonymousLocation);
        if (a(paramAccuracies, paramRecentness, h.c(h.this)).booleanValue())
        {
          BaseYelpApplication.a("LOCDEBUG", "Got an awesome location: %s oldness: %s", new Object[] { h.c(h.this), Long.valueOf(LocationService.Recentness.getOldness(h.c(h.this).getTime())) });
          parama.a(h.c(h.this), true);
          a(parama);
          localHandler.removeCallbacks(local3);
        }
      }
    };
    c.put(parama, paramAccuracies);
    if (a.isConnected())
    {
      b.a(a, e(), paramAccuracies);
      return;
    }
    e.add(new WeakReference(paramAccuracies));
    a.connect();
  }
  
  public void a(LocationService.a parama)
  {
    parama = (j)c.remove(parama);
    if (parama != null)
    {
      if (!a.isConnected()) {
        break label42;
      }
      b.a(a, parama);
    }
    for (;;)
    {
      return;
      label42:
      Iterator localIterator = e.iterator();
      while (localIterator.hasNext()) {
        if (((WeakReference)localIterator.next()).get() == parama) {
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
    return b.a(a);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.appdata.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */