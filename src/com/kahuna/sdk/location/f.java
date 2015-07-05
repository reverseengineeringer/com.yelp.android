package com.kahuna.sdk.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.Builder;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.GeofencingApi;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;
import com.kahuna.sdk.KahunaCoreReceiver;
import java.util.List;
import java.util.Timer;

public class f
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, ResultCallback<Status>
{
  private Context a;
  private PendingIntent b;
  private List<Geofence> c;
  private GoogleApiClient d;
  private LocationListener e = new g(this);
  private boolean f;
  
  public f(Context paramContext)
  {
    a = paramContext;
    d = null;
    f = false;
  }
  
  private void a()
  {
    try
    {
      b().connect();
      return;
    }
    catch (Exception localException) {}
  }
  
  private GoogleApiClient b()
  {
    if (d == null) {
      d = new GoogleApiClient.Builder(a).addApi(LocationServices.API).addConnectionCallbacks(this).addOnConnectionFailedListener(this).build();
    }
    return d;
  }
  
  private void c()
  {
    b = e();
    LocationServices.GeofencingApi.addGeofences(d, c, b).setResultCallback(this);
  }
  
  private void d()
  {
    try
    {
      f = false;
      b().disconnect();
      if (com.kahuna.sdk.h.p()) {
        Log.d("KahunaEngine", "Location Services client disconnected.");
      }
      d = null;
      return;
    }
    catch (Exception localException) {}
  }
  
  private PendingIntent e()
  {
    if (b != null) {
      return b;
    }
    Intent localIntent = new Intent(a, KahunaCoreReceiver.class);
    localIntent.setAction("KAHUNA_GEOFENCES_UPDATED");
    return PendingIntent.getBroadcast(a, 0, localIntent, 134217728);
  }
  
  public void a(Status paramStatus)
  {
    try
    {
      if (paramStatus.isSuccess())
      {
        if (com.kahuna.sdk.h.p()) {
          Log.d("KahunaEngine", "Geofences added successfully: " + c);
        }
        paramStatus = LocationRequest.create();
        paramStatus.setPriority(100);
        paramStatus.setInterval(100L);
        paramStatus.setFastestInterval(10L);
        LocationServices.FusedLocationApi.requestLocationUpdates(d, paramStatus, e);
        if (com.kahuna.sdk.h.p()) {
          Log.d("KahunaEngine", "Requesting gps updates for 30 seconds for new geofences just updated");
        }
        new Timer().schedule(new h(this), 30000L);
        return;
      }
      if (com.kahuna.sdk.h.p()) {
        Log.d("KahunaEngine", "Failure adding Geofences: " + c);
      }
      d();
      return;
    }
    catch (Exception paramStatus)
    {
      d();
    }
  }
  
  public void a(List<Geofence> paramList)
  {
    c = paramList;
    if (!f)
    {
      f = true;
      a();
    }
    while (!com.kahuna.sdk.h.p()) {
      return;
    }
    Log.w("KahunaEngine", "Error attempting to register geofences while previous registration in progess");
  }
  
  public void onConnected(Bundle paramBundle)
  {
    if (com.kahuna.sdk.h.p()) {
      Log.d("KahunaEngine", "Location Services client connected.");
    }
    try
    {
      c();
      return;
    }
    catch (Exception paramBundle)
    {
      while (!com.kahuna.sdk.h.p()) {}
      Log.d("KahunaEngine", "Caught exception in Geofence Remover onConnected: " + paramBundle);
    }
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    f = false;
    if (com.kahuna.sdk.h.p())
    {
      Log.e("KahunaEngine", "Adding: Received connection failed event while attempt geofencing connection.");
      Log.e("KahunaEngine", "Error Code: " + paramConnectionResult.getErrorCode());
    }
    d = null;
  }
  
  public void onConnectionSuspended(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */