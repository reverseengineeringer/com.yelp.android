package com.google.android.gms.location;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import java.util.List;

public abstract interface g
{
  public abstract PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent);
  
  public abstract PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, List<String> paramList);
  
  @Deprecated
  public abstract PendingResult<Status> a(GoogleApiClient paramGoogleApiClient, List<f> paramList, PendingIntent paramPendingIntent);
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */