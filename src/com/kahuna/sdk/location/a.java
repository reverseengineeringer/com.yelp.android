package com.kahuna.sdk.location;

import android.app.PendingIntent;
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
import com.google.android.gms.location.b;
import com.kahuna.sdk.l;

public class a
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, ResultCallback<Status>
{
  private Context a;
  private GoogleApiClient b;
  private PendingIntent c;
  
  protected a(Context paramContext)
  {
    a = paramContext;
    b = null;
  }
  
  private void a()
  {
    b().connect();
  }
  
  private GoogleApiClient b()
  {
    if (b == null) {
      b = new GoogleApiClient.Builder(a).addApi(com.google.android.gms.location.a.a).addConnectionCallbacks(this).addOnConnectionFailedListener(this).build();
    }
    return b;
  }
  
  private void c()
  {
    b().disconnect();
    b = null;
  }
  
  private void d()
  {
    com.google.android.gms.location.a.b.a(b, c).setResultCallback(this);
  }
  
  protected void a(PendingIntent paramPendingIntent)
  {
    c = paramPendingIntent;
    if (c == null) {
      return;
    }
    a();
  }
  
  public void a(Status paramStatus)
  {
    try
    {
      if ((!paramStatus.isSuccess()) && (l.u())) {
        Log.d("Kahuna", "Failed to remove Activity Recognition Updates: " + paramStatus.getStatusMessage());
      }
      c();
      return;
    }
    catch (Exception paramStatus)
    {
      while (!l.u()) {}
      Log.w("Kahuna", "caught exception processing remove activity result: ");
      paramStatus.printStackTrace();
    }
  }
  
  public void onConnected(Bundle paramBundle)
  {
    if (l.u()) {
      Log.d("Kahuna", "Activity Recognition Remover Play Services Connected");
    }
    try
    {
      d();
      return;
    }
    catch (Exception paramBundle)
    {
      while (!l.u()) {}
      Log.w("Kahuna", "caught exception attempting to remove activity updates: ");
      paramBundle.printStackTrace();
    }
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    if (l.u()) {
      Log.d("Kahuna", "Activity Recognition Remover Play Services connection failed: " + paramConnectionResult.toString());
    }
  }
  
  public void onConnectionSuspended(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */