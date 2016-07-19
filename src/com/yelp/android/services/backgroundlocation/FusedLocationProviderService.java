package com.yelp.android.services.backgroundlocation;

import android.app.IntentService;
import android.content.Intent;
import android.location.Location;
import com.google.android.gms.location.LocationResult;
import com.yelp.android.appdata.AppData;

public class FusedLocationProviderService
  extends IntentService
{
  public FusedLocationProviderService()
  {
    super("FusedLocationProviderIntentService");
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    Location localLocation2 = b.a(paramIntent);
    Location localLocation1 = localLocation2;
    if (localLocation2 == null)
    {
      paramIntent = LocationResult.b(paramIntent);
      if (paramIntent == null) {
        return;
      }
      localLocation1 = paramIntent.a();
    }
    AppData.b().s().a(localLocation1);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.backgroundlocation.FusedLocationProviderService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */