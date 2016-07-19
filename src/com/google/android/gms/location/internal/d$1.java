package com.google.android.gms.location.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.j;

class d$1
  extends d.a
{
  d$1(d paramd, GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, j paramj)
  {
    super(paramGoogleApiClient);
  }
  
  protected void a(l paraml)
    throws RemoteException
  {
    d.b localb = new d.b(this);
    paraml.a(a, b, null, localb);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.d.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */