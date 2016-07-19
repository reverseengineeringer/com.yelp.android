package com.google.android.gms.location;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public abstract interface b
{
  public abstract PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, long paramLong, PendingIntent paramPendingIntent);
  
  public abstract PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, PendingIntent paramPendingIntent);
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */