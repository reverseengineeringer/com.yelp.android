package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zza.zzb;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.e;
import com.google.android.gms.location.j;
import com.google.android.gms.location.l.a;

public class d
  implements e
{
  public Location a(GoogleApiClient paramGoogleApiClient)
  {
    paramGoogleApiClient = com.google.android.gms.location.l.a(paramGoogleApiClient);
    try
    {
      paramGoogleApiClient = paramGoogleApiClient.a();
      return paramGoogleApiClient;
    }
    catch (Exception paramGoogleApiClient) {}
    return null;
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, final LocationRequest paramLocationRequest, final PendingIntent paramPendingIntent)
  {
    paramGoogleApiClient.zzb(new a(paramGoogleApiClient)
    {
      protected void a(l paramAnonymousl)
        throws RemoteException
      {
        d.b localb = new d.b(this);
        paramAnonymousl.a(paramLocationRequest, paramPendingIntent, localb);
      }
    });
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, final LocationRequest paramLocationRequest, final j paramj)
  {
    paramGoogleApiClient.zzb(new a(paramGoogleApiClient)
    {
      protected void a(l paramAnonymousl)
        throws RemoteException
      {
        d.b localb = new d.b(this);
        paramAnonymousl.a(paramLocationRequest, paramj, null, localb);
      }
    });
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, final j paramj)
  {
    paramGoogleApiClient.zzb(new a(paramGoogleApiClient)
    {
      protected void a(l paramAnonymousl)
        throws RemoteException
      {
        d.b localb = new d.b(this);
        paramAnonymousl.a(paramj, localb);
      }
    });
  }
  
  private static abstract class a
    extends l.a<Status>
  {
    public a(GoogleApiClient paramGoogleApiClient)
    {
      super();
    }
    
    public Status a(Status paramStatus)
    {
      return paramStatus;
    }
  }
  
  private static class b
    extends g.a
  {
    private final zza.zzb<Status> a;
    
    public b(zza.zzb<Status> paramzzb)
    {
      a = paramzzb;
    }
    
    public void a(FusedLocationProviderResult paramFusedLocationProviderResult)
    {
      a.zzs(paramFusedLocationProviderResult.getStatus());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */