package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.location.Location;
import android.os.Looper;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationServices;

public class nf
  implements FusedLocationProviderApi
{
  public Location getLastLocation(GoogleApiClient paramGoogleApiClient)
  {
    paramGoogleApiClient = LocationServices.f(paramGoogleApiClient);
    try
    {
      paramGoogleApiClient = paramGoogleApiClient.nl();
      return paramGoogleApiClient;
    }
    catch (Exception paramGoogleApiClient) {}
    return null;
  }
  
  public PendingResult<Status> removeLocationUpdates(GoogleApiClient paramGoogleApiClient, PendingIntent paramPendingIntent)
  {
    return paramGoogleApiClient.b(new nf.6(this, paramGoogleApiClient, paramPendingIntent));
  }
  
  public PendingResult<Status> removeLocationUpdates(GoogleApiClient paramGoogleApiClient, LocationListener paramLocationListener)
  {
    return paramGoogleApiClient.b(new nf.5(this, paramGoogleApiClient, paramLocationListener));
  }
  
  public PendingResult<Status> requestLocationUpdates(GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
  {
    return paramGoogleApiClient.b(new nf.4(this, paramGoogleApiClient, paramLocationRequest, paramPendingIntent));
  }
  
  public PendingResult<Status> requestLocationUpdates(GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, LocationListener paramLocationListener)
  {
    return paramGoogleApiClient.b(new nf.1(this, paramGoogleApiClient, paramLocationRequest, paramLocationListener));
  }
  
  public PendingResult<Status> requestLocationUpdates(GoogleApiClient paramGoogleApiClient, LocationRequest paramLocationRequest, LocationListener paramLocationListener, Looper paramLooper)
  {
    return paramGoogleApiClient.b(new nf.3(this, paramGoogleApiClient, paramLocationRequest, paramLocationListener, paramLooper));
  }
  
  public PendingResult<Status> setMockLocation(GoogleApiClient paramGoogleApiClient, Location paramLocation)
  {
    return paramGoogleApiClient.b(new nf.2(this, paramGoogleApiClient, paramLocation));
  }
  
  public PendingResult<Status> setMockMode(GoogleApiClient paramGoogleApiClient, boolean paramBoolean)
  {
    return paramGoogleApiClient.b(new nf.7(this, paramGoogleApiClient, paramBoolean));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nf
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */