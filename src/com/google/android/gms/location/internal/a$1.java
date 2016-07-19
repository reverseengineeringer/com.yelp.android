package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

class a$1
  extends a.a
{
  a$1(a parama, GoogleApiClient paramGoogleApiClient, long paramLong, PendingIntent paramPendingIntent)
  {
    super(paramGoogleApiClient);
  }
  
  protected void a(l paraml)
    throws RemoteException
  {
    paraml.a(a, b);
    zza(Status.zzagC);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */