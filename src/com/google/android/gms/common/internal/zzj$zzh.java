package com.google.android.gms.common.internal;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.zza;

public final class zzj$zzh
  extends zzj<T>.zza
{
  public zzj$zzh(zzj paramzzj, int paramInt)
  {
    super(paramzzj, paramInt, null);
  }
  
  protected void zzj(ConnectionResult paramConnectionResult)
  {
    zzj.zzb(zzalL).zza(paramConnectionResult);
    zzalL.onConnectionFailed(paramConnectionResult);
  }
  
  protected boolean zzqL()
  {
    zzj.zzb(zzalL).zza(ConnectionResult.zzafB);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzj.zzh
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */