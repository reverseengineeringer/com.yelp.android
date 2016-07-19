package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationRequest;

class d$2
  extends d.a
{
  d$2(d paramd, GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
  {
    super(paramGoogleApiClient);
  }
  
  protected void a(l paraml)
    throws RemoteException
  {
    d.b localb = new d.b(this);
    paraml.a(a, b, localb);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.d.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */