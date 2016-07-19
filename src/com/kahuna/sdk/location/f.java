package com.kahuna.sdk.location;

import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.location.Location;
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
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.e;
import com.google.android.gms.location.g;
import com.google.android.gms.location.j;
import com.kahuna.sdk.KahunaCoreReceiver;
import java.util.List;
import java.util.Timer;
import java.util.TimerTask;
import java.util.concurrent.TimeUnit;

public class f
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, ResultCallback<Status>
{
  private Context a;
  private PendingIntent b;
  private List<com.google.android.gms.location.f> c;
  private GoogleApiClient d;
  private j e = new j()
  {
    public void a(Location paramAnonymousLocation) {}
  };
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
      d = new GoogleApiClient.Builder(a).addApi(com.google.android.gms.location.l.a).addConnectionCallbacks(this).addOnConnectionFailedListener(this).build();
    }
    return d;
  }
  
  private void c()
  {
    b = e();
    com.google.android.gms.location.l.c.a(d, c, b).setResultCallback(this);
  }
  
  private void d()
  {
    try
    {
      f = false;
      b().disconnect();
      if (com.kahuna.sdk.l.u()) {
        Log.d("Kahuna", "Location Services client disconnected.");
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
        if (com.kahuna.sdk.l.u()) {
          Log.d("Kahuna", "Geofences added successfully: " + c);
        }
        paramStatus = LocationRequest.a();
        paramStatus.a(100);
        paramStatus.a(100L);
        paramStatus.c(10L);
        com.google.android.gms.location.l.b.a(d, paramStatus, e);
        if (com.kahuna.sdk.l.u()) {
          Log.d("Kahuna", "Requesting gps updates for 30 seconds for new geofences just updated");
        }
        new Timer().schedule(new TimerTask()
        {
          public void run()
          {
            try
            {
              com.google.android.gms.location.l.b.a(f.a(f.this), f.b(f.this)).await(5000L, TimeUnit.MILLISECONDS);
              if (com.kahuna.sdk.l.u()) {
                Log.d("Kahuna", "Finished requesting for gps updates for geofences.");
              }
              f.c(f.this);
              return;
            }
            catch (Exception localException)
            {
              for (;;) {}
            }
          }
        }, 30000L);
        return;
      }
      if (com.kahuna.sdk.l.u()) {
        Log.d("Kahuna", "Failure adding Geofences: " + c);
      }
      d();
      return;
    }
    catch (Exception paramStatus)
    {
      d();
    }
  }
  
  public void a(List<com.google.android.gms.location.f> paramList)
    throws UnsupportedOperationException
  {
    c = paramList;
    if (!f)
    {
      f = true;
      a();
    }
    while (!com.kahuna.sdk.l.u()) {
      return;
    }
    Log.w("Kahuna", "Error attempting to register geofences while previous registration in progess");
  }
  
  public void onConnected(Bundle paramBundle)
  {
    if (com.kahuna.sdk.l.u()) {
      Log.d("Kahuna", "Location Services client connected.");
    }
    try
    {
      c();
      return;
    }
    catch (Exception paramBundle)
    {
      while (!com.kahuna.sdk.l.u()) {}
      Log.d("Kahuna", "Caught exception in Geofence Remover onConnected: " + paramBundle);
    }
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    f = false;
    if (com.kahuna.sdk.l.u())
    {
      Log.e("Kahuna", "Adding: Received connection failed event while attempt geofencing connection.");
      Log.e("Kahuna", "Error Code: " + paramConnectionResult.getErrorCode());
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