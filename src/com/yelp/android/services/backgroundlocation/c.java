package com.yelp.android.services.backgroundlocation;

import android.annotation.SuppressLint;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.GeofencingRequest.a;
import com.google.android.gms.location.f;
import com.google.android.gms.location.f.a;
import com.google.android.gms.location.g;
import com.google.android.gms.location.l;
import com.yelp.android.util.YelpLog;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.concurrent.TimeUnit;

public class c
{
  private static final int a = (int)TimeUnit.MINUTES.toMillis(5L);
  private final Context b;
  private GoogleApiClient c;
  private ResultCallback d = new c.4(this);
  
  public c(Context paramContext)
  {
    b = paramContext;
  }
  
  private GeofencingRequest a(f paramf)
  {
    return new GeofencingRequest.a().a(paramf).a(7).a();
  }
  
  private void a(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    if ((c != null) && (c.isConnecting())) {
      return;
    }
    YelpLog.v("BackgroundLocation", "Connecting to Google apis.");
    c.3 local3 = new c.3(this);
    c = new GoogleApiClient.Builder(b).addApi(l.a).addConnectionCallbacks(paramConnectionCallbacks).addOnConnectionFailedListener(local3).build();
    c.connect();
  }
  
  @SuppressLint({"MissingPermission"})
  private void a(GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent)
  {
    YelpLog.v("BackgroundLocation", "Connected to Google apis adding geofence.");
    l.c.a(c, paramGeofencingRequest, paramPendingIntent).setResultCallback(d);
  }
  
  private f b(double paramDouble1, double paramDouble2, double paramDouble3, int paramInt)
  {
    return new f.a().b(a).a("yelp_android_geofence").a(paramDouble1, paramDouble2, (float)paramDouble3).c(paramInt).a(-1L).a(7).a();
  }
  
  public void a()
  {
    YelpLog.v("BackgroundLocation", "Stopping geofence monitoring");
    if ((c != null) && (c.isConnected()))
    {
      l.c.a(c, new ArrayList(Arrays.asList(new String[] { "yelp_android_geofence" }))).setResultCallback(d);
      return;
    }
    a(new c.2(this));
  }
  
  public void a(double paramDouble1, double paramDouble2, double paramDouble3, int paramInt)
  {
    YelpLog.v("BackgroundLocation", "Adding geofence to system.");
    GeofencingRequest localGeofencingRequest = a(b(paramDouble1, paramDouble2, paramDouble3, paramInt));
    PendingIntent localPendingIntent = PendingIntent.getService(b, 0, new Intent(b, GeofenceTransitionService.class), 134217728);
    if ((c != null) && (c.isConnected()))
    {
      a(localGeofencingRequest, localPendingIntent);
      return;
    }
    a(new c.1(this, localGeofencingRequest, localPendingIntent));
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.backgroundlocation.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */