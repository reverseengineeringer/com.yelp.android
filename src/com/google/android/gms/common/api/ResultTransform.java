package com.google.android.gms.common.api;

import com.google.android.gms.common.api.internal.zzt;

public abstract class ResultTransform<R extends Result, S extends Result>
{
  public final PendingResult<S> createFailedResult(Status paramStatus)
  {
    return new zzt(paramStatus);
  }
  
  public Status onFailure(Status paramStatus)
  {
    return paramStatus;
  }
  
  public abstract PendingResult<S> onSuccess(R paramR);
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.api.ResultTransform
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */