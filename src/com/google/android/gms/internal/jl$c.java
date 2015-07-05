package com.google.android.gms.internal;

import android.os.Bundle;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;

public final class jl$c
  implements GoogleApiClient.ConnectionCallbacks
{
  private final GooglePlayServicesClient.ConnectionCallbacks MS;
  
  public jl$c(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    MS = paramConnectionCallbacks;
  }
  
  public boolean equals(Object paramObject)
  {
    if ((paramObject instanceof c)) {
      return MS.equals(MS);
    }
    return MS.equals(paramObject);
  }
  
  public void onConnected(Bundle paramBundle)
  {
    MS.onConnected(paramBundle);
  }
  
  public void onConnectionSuspended(int paramInt)
  {
    MS.onDisconnected();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jl.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */