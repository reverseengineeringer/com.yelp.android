package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.location.internal.l;

final class a$1
  extends Api.zza<l, Api.ApiOptions.NoOptions>
{
  public l a(Context paramContext, Looper paramLooper, zzf paramzzf, Api.ApiOptions.NoOptions paramNoOptions, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return new l(paramContext, paramLooper, paramConnectionCallbacks, paramOnConnectionFailedListener, "activity_recognition");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.a.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */