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
import com.google.android.gms.location.ActivityRecognition;
import com.google.android.gms.location.ActivityRecognitionApi;
import com.kahuna.sdk.KahunaCoreReceiver;
import com.kahuna.sdk.h;

public class b
  implements GoogleApiClient.ConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener, ResultCallback<Status>
{
  private Context a;
  private PendingIntent b;
  private GoogleApiClient c;
  
  protected b(Context paramContext)
  {
    a = paramContext;
    b = null;
    c = null;
  }
  
  private void a(PendingIntent paramPendingIntent)
  {
    b = paramPendingIntent;
  }
  
  private void c()
  {
    ActivityRecognition.ActivityRecognitionApi.requestActivityUpdates(c, c.b(), g()).setResultCallback(this);
  }
  
  private void d()
  {
    e().connect();
  }
  
  private GoogleApiClient e()
  {
    if (c == null) {
      c = new GoogleApiClient.Builder(a).addApi(ActivityRecognition.API).addConnectionCallbacks(this).addOnConnectionFailedListener(this).build();
    }
    return c;
  }
  
  private void f()
  {
    e().disconnect();
    c = null;
  }
  
  private PendingIntent g()
  {
    if (a() != null) {
      return b;
    }
    Object localObject = new Intent(a, KahunaCoreReceiver.class);
    localObject = PendingIntent.getBroadcast(a, 0, (Intent)localObject, 134217728);
    a((PendingIntent)localObject);
    return (PendingIntent)localObject;
  }
  
  protected PendingIntent a()
  {
    return b;
  }
  
  public void a(Status paramStatus)
  {
    try
    {
      if ((!paramStatus.isSuccess()) && (h.p())) {
        Log.d("KahunaEngine", "Failed to request Activity Recognition Updates: " + paramStatus.getStatusMessage());
      }
      f();
      return;
    }
    catch (Exception paramStatus)
    {
      while (!h.p()) {}
      Log.w("KahunaEngine", "caught exception processing request activity result: ");
      paramStatus.printStackTrace();
    }
  }
  
  protected void b()
  {
    d();
  }
  
  public void onConnected(Bundle paramBundle)
  {
    if (h.p()) {
      Log.d("KahunaEngine", "Activity Recognition Requester Play Services Connected");
    }
    try
    {
      c();
      return;
    }
    catch (Exception paramBundle)
    {
      while (!h.p()) {}
      Log.w("KahunaEngine", "caught exception attempting to request for activity updates: ");
      paramBundle.printStackTrace();
    }
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    if (h.p()) {
      Log.d("KahunaEngine", "Activity Recognition Requester Play Services connection failed: " + paramConnectionResult.toString());
    }
  }
  
  public void onConnectionSuspended(int paramInt) {}
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */