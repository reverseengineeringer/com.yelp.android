package com.google.android.gms.location;

import android.app.PendingIntent;
import android.location.Location;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;

public abstract interface e
{
  public abstract Location a(GoogleApiClient paramGoogleApiClient);
  
  public abstract PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, PendingIntent paramPendingIntent);
  
  public abstract PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, j paramj);
  
  public abstract PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, j paramj);
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */