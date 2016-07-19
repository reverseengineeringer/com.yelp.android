package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zza.zzb;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.j;
import com.google.android.gms.location.m;
import java.util.List;

public class l
  extends b
{
  private final k b = new k(paramContext, a);
  
  public l(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString)
  {
    this(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramString, zzf.zzat(paramContext));
  }
  
  public l(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String paramString, zzf paramzzf)
  {
    super(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, paramString, paramzzf);
  }
  
  public Location a()
  {
    return b.a();
  }
  
  public void a(long paramLong, PendingIntent paramPendingIntent)
    throws RemoteException
  {
    zzqI();
    zzx.zzz(paramPendingIntent);
    if (paramLong >= 0L) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "detectionIntervalMillis must be >= 0");
      ((i)zzqJ()).a(paramLong, true, paramPendingIntent);
      return;
    }
  }
  
  public void a(PendingIntent paramPendingIntent)
    throws RemoteException
  {
    zzqI();
    zzx.zzz(paramPendingIntent);
    ((i)zzqJ()).a(paramPendingIntent);
  }
  
  public void a(GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent, zza.zzb<Status> paramzzb)
    throws RemoteException
  {
    zzqI();
    zzx.zzb(paramGeofencingRequest, "geofencingRequest can't be null.");
    zzx.zzb(paramPendingIntent, "PendingIntent must be specified.");
    zzx.zzb(paramzzb, "ResultHolder not provided.");
    paramzzb = new a(paramzzb);
    ((i)zzqJ()).a(paramGeofencingRequest, paramPendingIntent, paramzzb);
  }
  
  public void a(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent, g paramg)
    throws RemoteException
  {
    b.a(paramLocationRequest, paramPendingIntent, paramg);
  }
  
  public void a(LocationRequest paramLocationRequest, j paramj, Looper paramLooper, g paramg)
    throws RemoteException
  {
    synchronized (b)
    {
      b.a(paramLocationRequest, paramj, paramLooper, paramg);
      return;
    }
  }
  
  public void a(j paramj, g paramg)
    throws RemoteException
  {
    b.a(paramj, paramg);
  }
  
  public void a(List<String> paramList, zza.zzb<Status> paramzzb)
    throws RemoteException
  {
    zzqI();
    if ((paramList != null) && (paramList.size() > 0)) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "geofenceRequestIds can't be null nor empty.");
      zzx.zzb(paramzzb, "ResultHolder not provided.");
      paramList = (String[])paramList.toArray(new String[0]);
      paramzzb = new b(paramzzb);
      ((i)zzqJ()).a(paramList, paramzzb, getContext().getPackageName());
      return;
    }
  }
  
  public void disconnect()
  {
    synchronized (b)
    {
      boolean bool = isConnected();
      if (bool) {}
      try
      {
        b.b();
        b.c();
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
  
  private static final class a
    extends h.a
  {
    private zza.zzb<Status> a;
    
    public a(zza.zzb<Status> paramzzb)
    {
      a = paramzzb;
    }
    
    public void a(int paramInt, PendingIntent paramPendingIntent)
    {
      Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByPendingIntentResult");
    }
    
    public void a(int paramInt, String[] paramArrayOfString)
    {
      if (a == null)
      {
        Log.wtf("LocationClientImpl", "onAddGeofenceResult called multiple times");
        return;
      }
      paramArrayOfString = m.b(m.a(paramInt));
      a.zzs(paramArrayOfString);
      a = null;
    }
    
    public void b(int paramInt, String[] paramArrayOfString)
    {
      Log.wtf("LocationClientImpl", "Unexpected call to onRemoveGeofencesByRequestIdsResult");
    }
  }
  
  private static final class b
    extends h.a
  {
    private zza.zzb<Status> a;
    
    public b(zza.zzb<Status> paramzzb)
    {
      a = paramzzb;
    }
    
    private void a(int paramInt)
    {
      if (a == null)
      {
        Log.wtf("LocationClientImpl", "onRemoveGeofencesResult called multiple times");
        return;
      }
      Status localStatus = m.b(m.a(paramInt));
      a.zzs(localStatus);
      a = null;
    }
    
    public void a(int paramInt, PendingIntent paramPendingIntent)
    {
      a(paramInt);
    }
    
    public void a(int paramInt, String[] paramArrayOfString)
    {
      Log.wtf("LocationClientImpl", "Unexpected call to onAddGeofencesResult");
    }
    
    public void b(int paramInt, String[] paramArrayOfString)
    {
      a(paramInt);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */