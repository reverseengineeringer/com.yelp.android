package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.HasOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.signin.internal.g;
import com.google.android.gms.signin.internal.h;

public final class ld
{
  public static final Api.zzc<h> a = new Api.zzc();
  public static final Api.zzc<h> b = new Api.zzc();
  public static final Api.zza<h, lg> c = new Api.zza()
  {
    public h a(Context paramAnonymousContext, Looper paramAnonymousLooper, zzf paramAnonymouszzf, lg paramAnonymouslg, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      if (paramAnonymouslg == null) {
        paramAnonymouslg = lg.a;
      }
      for (;;)
      {
        return new h(paramAnonymousContext, paramAnonymousLooper, true, paramAnonymouszzf, paramAnonymouslg, paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener);
      }
    }
  };
  static final Api.zza<h, a> d = new Api.zza()
  {
    public h a(Context paramAnonymousContext, Looper paramAnonymousLooper, zzf paramAnonymouszzf, ld.a paramAnonymousa, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      return new h(paramAnonymousContext, paramAnonymousLooper, false, paramAnonymouszzf, paramAnonymousa.a(), paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener);
    }
  };
  public static final Scope e = new Scope("profile");
  public static final Scope f = new Scope("email");
  public static final Api<lg> g = new Api("SignIn.API", c, a);
  public static final Api<a> h = new Api("SignIn.INTERNAL_API", d, b);
  public static final le i = new g();
  
  public static class a
    implements Api.ApiOptions.HasOptions
  {
    private final Bundle a;
    
    public Bundle a()
    {
      return a;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ld
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */