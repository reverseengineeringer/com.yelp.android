package com.google.android.gms.appdatasearch;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.internal.iu;
import com.google.android.gms.internal.iv;

public final class a
{
  public static final Api.zzc<iu> a = new Api.zzc();
  public static final Api<Api.ApiOptions.NoOptions> b = new Api("AppDataSearch.LIGHTWEIGHT_API", d, a);
  public static final k c = new iv();
  private static final Api.zza<iu, Api.ApiOptions.NoOptions> d = new Api.zza()
  {
    public iu a(Context paramAnonymousContext, Looper paramAnonymousLooper, zzf paramAnonymouszzf, Api.ApiOptions.NoOptions paramAnonymousNoOptions, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      return new iu(paramAnonymousContext, paramAnonymousLooper, paramAnonymouszzf, paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener);
    }
  };
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */