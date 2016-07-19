package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;

class a$2
  extends a.a
{
  a$2(a parama, GoogleApiClient paramGoogleApiClient, PendingIntent paramPendingIntent)
  {
    super(paramGoogleApiClient);
  }
  
  protected void a(l paraml)
    throws RemoteException
  {
    paraml.a(a);
    zza(Status.zzagC);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.a.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */