package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.Geofence;
import com.google.android.gms.location.GeofencingApi;
import com.google.android.gms.location.GeofencingRequest;
import com.google.android.gms.location.GeofencingRequest.Builder;
import java.util.List;

public class ng
  implements GeofencingApi
{
  public PendingResult<Status> addGeofences(GoogleApiClient paramGoogleApiClient, GeofencingRequest paramGeofencingRequest, PendingIntent paramPendingIntent)
  {
    return paramGoogleApiClient.b(new ng.1(this, paramGoogleApiClient, paramGeofencingRequest, paramPendingIntent));
  }
  
  @Deprecated
  public PendingResult<Status> addGeofences(GoogleApiClient paramGoogleApiClient, List<Geofence> paramList, PendingIntent paramPendingIntent)
  {
    GeofencingRequest.Builder localBuilder = new GeofencingRequest.Builder();
    localBuilder.addGeofences(paramList);
    localBuilder.setInitialTrigger(5);
    return addGeofences(paramGoogleApiClient, localBuilder.build(), paramPendingIntent);
  }
  
  public PendingResult<Status> removeGeofences(GoogleApiClient paramGoogleApiClient, PendingIntent paramPendingIntent)
  {
    return paramGoogleApiClient.b(new ng.2(this, paramGoogleApiClient, paramPendingIntent));
  }
  
  public PendingResult<Status> removeGeofences(GoogleApiClient paramGoogleApiClient, List<String> paramList)
  {
    return paramGoogleApiClient.b(new ng.3(this, paramGoogleApiClient, paramList));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ng
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */