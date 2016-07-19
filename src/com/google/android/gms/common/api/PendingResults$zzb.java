package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.zzb;

final class PendingResults$zzb<R extends Result>
  extends zzb<R>
{
  private final R zzagy;
  
  public PendingResults$zzb(GoogleApiClient paramGoogleApiClient, R paramR)
  {
    super(paramGoogleApiClient);
    zzagy = paramR;
  }
  
  protected R zzc(Status paramStatus)
  {
    return zzagy;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.PendingResults.zzb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */