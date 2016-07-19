package com.google.android.gms.common.api;

import java.util.ArrayList;
import java.util.List;

public final class Batch$Builder
{
  private GoogleApiClient zzaaj;
  private List<PendingResult<?>> zzage = new ArrayList();
  
  public Batch$Builder(GoogleApiClient paramGoogleApiClient)
  {
    zzaaj = paramGoogleApiClient;
  }
  
  public <R extends Result> BatchResultToken<R> add(PendingResult<R> paramPendingResult)
  {
    BatchResultToken localBatchResultToken = new BatchResultToken(zzage.size());
    zzage.add(paramPendingResult);
    return localBatchResultToken;
  }
  
  public Batch build()
  {
    return new Batch(zzage, zzaaj, null);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.Batch.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */