package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.c.a;
import com.google.android.gms.location.c.b;
import java.util.List;

public class nk
  extends nc
{
  private final nj agX = new nj(paramContext, Ee);
  private final mz agY = mz.a(paramContext, paramString3, paramString4, Ee);
  private final ie agZ = ie.a(paramContext, Ee);
  
  public nk(Context paramContext, Looper paramLooper, String paramString1, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString2)
  {
    this(paramContext, paramLooper, paramString1, paramConnectionCallbacks, paramOnConnectionFailedListener, paramString2, null);
  }
  
  public nk(Context paramContext, Looper paramLooper, String paramString1, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString2, String paramString3)
  {
    this(paramContext, paramLooper, paramString1, paramConnectionCallbacks, paramOnConnectionFailedListener, paramString2, paramString3, null);
  }
  
  public nk(Context paramContext, Looper paramLooper, String paramString1, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString2, String paramString3, String paramString4)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramString2);
  }
  
  public void S(boolean paramBoolean)
  {
    agX.S(paramBoolean);
  }
  
  public void a(long paramLong, PendingIntent paramPendingIntent)
  {
    dS();
    jx.i(paramPendingIntent);
    if (paramLong >= 0L) {}
    for (boolean bool = true;; bool = false)
    {
      jx.b(bool, "detectionIntervalMillis must be >= 0");
      ((ni)hw()).a(paramLong, true, paramPendingIntent);
      return;
    }
  }
  
  public void a(PendingIntent paramPendingIntent)
  {
    dS();
    jx.i(paramPendingIntent);
    ((ni)hw()).a(paramPendingIntent);
  }
  
  public void a(PendingIntent paramPendingIntent, c.b paramb)
  {
    dS();
    jx.b(paramPendingIntent, "PendingIntent must be specified.");
    jx.b(paramb, "OnRemoveGeofencesResultListener not provided.");
    if (paramb == null) {}
    for (paramb = null;; paramb = new nk.b(paramb, this))
    {
      ((ni)hw()).a(paramPendingIntent, paramb, getContext().getPackageName());
      return;
    }
  }
  
  public void a(GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent, c.a parama)
  {
    dS();
    jx.b(paramGeofencingRequest, "geofencingRequest can't be null.");
    jx.b(paramPendingIntent, "PendingIntent must be specified.");
    jx.b(parama, "OnAddGeofencesResultListener not provided.");
    if (parama == null) {}
    for (parama = null;; parama = new nk.b(parama, this))
    {
      ((ni)hw()).a(paramGeofencingRequest, paramPendingIntent, parama);
      return;
    }
  }
  
  public void a(LocationListener paramLocationListener)
  {
    agX.a(paramLocationListener);
  }
  
  public void a(LocationRequest paramLocationRequest, LocationListener paramLocationListener, Looper paramLooper)
  {
    synchronized (agX)
    {
      agX.a(paramLocationRequest, paramLocationListener, paramLooper);
      return;
    }
  }
  
  public void a(List<String> paramList, c.b paramb)
  {
    dS();
    boolean bool;
    String[] arrayOfString;
    if ((paramList != null) && (paramList.size() > 0))
    {
      bool = true;
      jx.b(bool, "geofenceRequestIds can't be null nor empty.");
      jx.b(paramb, "OnRemoveGeofencesResultListener not provided.");
      arrayOfString = (String[])paramList.toArray(new String[0]);
      if (paramb != null) {
        break label81;
      }
    }
    label81:
    for (paramList = null;; paramList = new nk.b(paramb, this))
    {
      ((ni)hw()).a(arrayOfString, paramList, getContext().getPackageName());
      return;
      bool = false;
      break;
    }
  }
  
  public void b(Location paramLocation)
  {
    agX.b(paramLocation);
  }
  
  public void b(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
  {
    agX.b(paramLocationRequest, paramPendingIntent);
  }
  
  public void c(PendingIntent paramPendingIntent)
  {
    agX.c(paramPendingIntent);
  }
  
  public void disconnect()
  {
    synchronized (agX)
    {
      boolean bool = isConnected();
      if (bool) {}
      try
      {
        agX.removeAllListeners();
        agX.nm();
        super.disconnect();
        return;
      }
      catch (Exception localException)
      {
        for (;;)
        {
          Log.e("LocationClientImpl", "Client disconnected before listeners could be cleaned up", localException);
        }
      }
    }
  }
  
  public Location nl()
  {
    return agX.nl();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */