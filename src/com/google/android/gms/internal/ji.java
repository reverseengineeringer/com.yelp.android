package com.google.android.gms.internal;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;

public final class ji
{
  public static final Api.zzc<jm> a = new Api.zzc();
  public static final Api<Api.ApiOptions.NoOptions> b = new Api("Common.API", d, a);
  public static final jj c = new jk();
  private static final Api.zza<jm, Api.ApiOptions.NoOptions> d = new Api.zza()
  {
    public jm a(Context paramAnonymousContext, Looper paramAnonymousLooper, zzf paramAnonymouszzf, Api.ApiOptions.NoOptions paramAnonymousNoOptions, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      return new jm(paramAnonymousContext, paramAnonymousLooper, paramAnonymouszzf, paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener);
    }
  };
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ji
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */