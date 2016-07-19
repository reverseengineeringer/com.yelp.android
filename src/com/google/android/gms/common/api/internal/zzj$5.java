package com.google.android.gms.common.api.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;
import com.yelp.android.bi.a;

class zzj$5
  implements ResultCallback<Status>
{
  zzj$5(zzj paramzzj, zzv paramzzv, boolean paramBoolean, GoogleApiClient paramGoogleApiClient) {}
  
  public void zzp(Status paramStatus)
  {
    a.a(zzj.zzd(zzaid)).b();
    if ((paramStatus.isSuccess()) && (zzaid.isConnected())) {
      zzaid.reconnect();
    }
    zzaif.zza(paramStatus);
    if (zzaig) {
      zzabL.disconnect();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.internal.zzj.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */