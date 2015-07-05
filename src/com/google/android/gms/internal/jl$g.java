package com.google.android.gms.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

public final class jl$g
  implements GoogleApiClient.OnConnectionFailedListener
{
  private final GooglePlayServicesClient.OnConnectionFailedListener MU;
  
  public jl$g(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    MU = paramOnConnectionFailedListener;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof g)) {
      return MU.equals(MU);
    }
    return MU.equals(paramObject);
  }
  
  public void onConnectionFailed(ConnectionResult paramConnectionResult)
  {
    MU.onConnectionFailed(paramConnectionResult);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jl.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */