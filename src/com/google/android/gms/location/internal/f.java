package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.GeofencingRequest.a;
import com.google.android.gms.location.g;
import com.google.android.gms.location.l.a;
import java.util.List;

public class f
  implements g
{
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, final GeofencingRequest paramGeofencingRequest, final PendingIntent paramPendingIntent)
  {
    paramGoogleApiClient.zzb(new a(paramGoogleApiClient)
    {
      protected void a(l paramAnonymousl)
        throws RemoteException
      {
        paramAnonymousl.a(paramGeofencingRequest, paramPendingIntent, this);
      }
    });
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, final List<String> paramList)
  {
    paramGoogleApiClient.zzb(new a(paramGoogleApiClient)
    {
      protected void a(l paramAnonymousl)
        throws RemoteException
      {
        paramAnonymousl.a(paramList, this);
      }
    });
  }
  
  @Deprecated
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, List<com.google.android.gms.location.f> paramList, PendingIntent paramPendingIntent)
  {
    GeofencingRequest.a locala = new GeofencingRequest.a();
    locala.a(paramList);
    locala.a(5);
    return a(paramGoogleApiClient, locala.a(), paramPendingIntent);
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */