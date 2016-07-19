package com.google.android.gms.internal;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.Result;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.zza.zza;

abstract class jl<R extends Result>
  extends zza.zza<R, jm>
{
  public jl(GoogleApiClient paramGoogleApiClient)
  {
    super(ji.a, paramGoogleApiClient);
  }
  
  static abstract class a
    extends jl<Status>
  {
    public a(GoogleApiClient paramGoogleApiClient)
    {
      super();
    }
    
    public Status a(Status paramStatus)
    {
      return paramStatus;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */