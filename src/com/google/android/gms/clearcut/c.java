package com.google.android.gms.clearcut;

import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.util.concurrent.TimeUnit;

public abstract interface c
{
  public abstract PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, LogEventParcelable paramLogEventParcelable);
  
  public abstract boolean a(GoogleApiClient paramGoogleApiClient, long paramLong, TimeUnit paramTimeUnit);
}

/* Location:
 * Qualified Name:     com.google.android.gms.clearcut.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */