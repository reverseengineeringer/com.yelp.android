package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.signin.internal.h;

final class ld$2
  extends Api.zza<h, ld.a>
{
  public h a(Context paramContext, Looper paramLooper, zzf paramzzf, ld.a parama, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return new h(paramContext, paramLooper, false, paramzzf, parama.a(), paramConnectionCallbacks, paramOnConnectionFailedListener);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ld.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */