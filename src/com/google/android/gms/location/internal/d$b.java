package com.google.android.gms.location.internal;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zza.zzb;

class d$b
  extends g.a
{
  private final zza.zzb<Status> a;
  
  public d$b(zza.zzb<Status> paramzzb)
  {
    a = paramzzb;
  }
  
  public void a(FusedLocationProviderResult paramFusedLocationProviderResult)
  {
    a.zzs(paramFusedLocationProviderResult.getStatus());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.d.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */