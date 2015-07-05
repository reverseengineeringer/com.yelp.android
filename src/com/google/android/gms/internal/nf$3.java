package com.google.android.gms.internal;

import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;

class nf$3
  extends nf.a
{
  nf$3(nf paramnf, GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, LocationListener paramLocationListener, Looper paramLooper)
  {
    super(paramGoogleApiClient);
  }
  
  protected void a(nk paramnk)
  {
    paramnk.a(agF, agG, agJ);
    b(Status.Kw);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nf.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */