package com.kahuna.sdk.location;

import android.content.Context;
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
import com.google.android.gms.location.g;
import java.util.List;

public class e
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, ResultCallback<Status>
{
  private Context a;
  private List<String> b;
  private GoogleApiClient c;
  private boolean d;
  
  public e(Context paramContext)
  {
    a = paramContext;
    b = null;
    c = null;
    d = false;
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
    if (c == null) {
      c = new GoogleApiClient.Builder(a).addApi(com.google.android.gms.location.l.a).addConnectionCallbacks(this).addOnConnectionFailedListener(this).build();
    }
    return c;
  }
  
  private void c()
  {
    try
    {
      d = false;
      b().disconnect();
      if (com.kahuna.sdk.l.u()) {
        Log.d("Kahuna", "Location Services client disconnected.");
      }
      c = null;
      return;
    }
    catch (Exception localException) {}
  }
  
  public void a(Status paramStatus)
  {
    if (paramStatus.isSuccess()) {
      if (com.kahuna.sdk.l.u()) {
        Log.d("Kahuna", "Geofences removed successfully: " + b);
      }
    }
    for (;;)
    {
      c();
      return;
      if (com.kahuna.sdk.l.u()) {
        Log.d("Kahuna", "Failure removing Geofences: " + b);
      }
    }
  }
  
  public void a(List<String> paramList)
    throws IllegalArgumentException, UnsupportedOperationException
  {
    if ((paramList == null) || (paramList.size() == 0)) {
      if (com.kahuna.sdk.l.u()) {
        Log.e("Kahuna", "No valid geofences, ignoring.");
      }
    }
    while (d) {
      return;
    }
    b = paramList;
    a();
  }
  
  public void onConnected(Bundle paramBundle)
  {
    if (com.kahuna.sdk.l.u()) {
      Log.d("Kahuna", "Location Services client connected.");
    }
    try
    {
      com.google.android.gms.location.l.c.a(c, b).setResultCallback(this);
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
    d = false;
    if (com.kahuna.sdk.l.u())
    {
      Log.e("Kahuna", "Removal: Received connection failed event while attempt geofencing connection.");
      Log.e("Kahuna", "Error Code: " + paramConnectionResult.getErrorCode());
    }
    c = null;
  }
  
  public void onConnectionSuspended(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */