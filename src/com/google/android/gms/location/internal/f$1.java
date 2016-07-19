package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.GeofencingRequest;

class f$1
  extends f.a
{
  f$1(f paramf, GoogleApiClient paramGoogleApiClient, GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent)
  {
    super(paramGoogleApiClient);
  }
  
  protected void a(l paraml)
    throws RemoteException
  {
    paraml.a(a, b, this);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.f.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */