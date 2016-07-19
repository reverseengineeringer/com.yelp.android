package com.google.android.gms.location;

import android.content.Context;
import android.os.Looper;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Api.ApiOptions.NoOptions;
import com.google.android.gms.common.api.Api.zza;
import com.google.android.gms.common.api.Api.zzc;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.internal.zza.zza;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.internal.d;
import com.google.android.gms.location.internal.f;
import com.google.android.gms.location.internal.q;

public class l
{
  public static final Api<Api.ApiOptions.NoOptions> a = new Api("LocationServices.API", f, e);
  public static final e b = new d();
  public static final g c = new f();
  public static final n d = new q();
  private static final Api.zzc<com.google.android.gms.location.internal.l> e = new Api.zzc();
  private static final Api.zza<com.google.android.gms.location.internal.l, Api.ApiOptions.NoOptions> f = new Api.zza()
  {
    public com.google.android.gms.location.internal.l a(Context paramAnonymousContext, Looper paramAnonymousLooper, zzf paramAnonymouszzf, Api.ApiOptions.NoOptions paramAnonymousNoOptions, GoogleApiClient.ConnectionCallbacks paramAnonymousConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramAnonymousOnConnectionFailedListener)
    {
      return new com.google.android.gms.location.internal.l(paramAnonymousContext, paramAnonymousLooper, paramAnonymousConnectionCallbacks, paramAnonymousOnConnectionFailedListener, "locationServices", paramAnonymouszzf);
    }
  };
  
  public static com.google.android.gms.location.internal.l a(GoogleApiClient paramGoogleApiClient)
  {
    boolean bool2 = true;
    if (paramGoogleApiClient != null)
    {
      bool1 = true;
      zzx.zzb(bool1, "GoogleApiClient parameter is required.");
      paramGoogleApiClient = (com.google.android.gms.location.internal.l)paramGoogleApiClient.zza(e);
      if (paramGoogleApiClient == null) {
        break label44;
      }
    }
    label44:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      zzx.zza(bool1, "GoogleApiClient is not configured to use the LocationServices.API Api. Pass thisinto GoogleApiClient.Builder#addApi() to use this feature.");
      return paramGoogleApiClient;
      bool1 = false;
      break;
    }
  }
  
  public static abstract class a<R extends Result>
    extends zza.zza<R, com.google.android.gms.location.internal.l>
  {
    public a(GoogleApiClient paramGoogleApiClient)
    {
      super(paramGoogleApiClient);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */