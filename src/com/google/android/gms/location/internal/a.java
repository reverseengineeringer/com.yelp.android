package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.b;

public class a
  implements b
{
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, final long paramLong, PendingIntent paramPendingIntent)
  {
    paramGoogleApiClient.zzb(new a(paramGoogleApiClient)
    {
      protected void a(l paramAnonymousl)
        throws RemoteException
      {
        paramAnonymousl.a(paramLong, b);
        zza(Status.zzagC);
      }
    });
  }
  
  public PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, final PendingIntent paramPendingIntent)
  {
    paramGoogleApiClient.zzb(new a(paramGoogleApiClient)
    {
      protected void a(l paramAnonymousl)
        throws RemoteException
      {
        paramAnonymousl.a(paramPendingIntent);
        zza(Status.zzagC);
      }
    });
  }
  
  private static abstract class a
    extends com.google.android.gms.location.a.a<Status>
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
 * Qualified Name:     com.google.android.gms.location.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */