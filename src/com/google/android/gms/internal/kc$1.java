package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.b;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;

final class kc$1
  implements Api.b<kg, Api.ApiOptions.NoOptions>
{
  public kg c(Context paramContext, Looper paramLooper, jg paramjg, Api.ApiOptions.NoOptions paramNoOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return new kg(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, new String[0]);
  }
  
  public int getPriority()
  {
    return Integer.MAX_VALUE;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kc.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */