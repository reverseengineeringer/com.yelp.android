package com.google.android.gms.common.api;

import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import com.google.android.gms.common.api.internal.zzw;

class GoogleApiClient$Builder$1
  implements Runnable
{
  GoogleApiClient$Builder$1(GoogleApiClient.Builder paramBuilder, GoogleApiClient paramGoogleApiClient) {}
  
  public void run()
  {
    if ((GoogleApiClient.Builder.zza(zzagw).isFinishing()) || (GoogleApiClient.Builder.zza(zzagw).getSupportFragmentManager().g())) {
      return;
    }
    GoogleApiClient.Builder.zza(zzagw, zzw.zzb(GoogleApiClient.Builder.zza(zzagw)), zzabL);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.GoogleApiClient.Builder.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */