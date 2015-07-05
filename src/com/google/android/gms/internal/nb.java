package com.google.android.gms.internal;

import android.app.PendingIntent;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.ActivityRecognitionApi;

public class nb
  implements ActivityRecognitionApi
{
  public PendingResult<Status> removeActivityUpdates(GoogleApiClient paramGoogleApiClient, PendingIntent paramPendingIntent)
  {
    return paramGoogleApiClient.b(new nb.2(this, paramGoogleApiClient, paramPendingIntent));
  }
  
  public PendingResult<Status> requestActivityUpdates(GoogleApiClient paramGoogleApiClient, long paramLong, PendingIntent paramPendingIntent)
  {
    return paramGoogleApiClient.b(new nb.1(this, paramGoogleApiClient, paramLong, paramPendingIntent));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nb
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */