package com.google.android.gms.location.internal;

import android.os.RemoteException;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.location.j;

class d$3
  extends d.a
{
  d$3(d paramd, GoogleApiClient paramGoogleApiClient, j paramj)
  {
    super(paramGoogleApiClient);
  }
  
  protected void a(l paraml)
    throws RemoteException
  {
    d.b localb = new d.b(this);
    paraml.a(a, localb);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.d.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */