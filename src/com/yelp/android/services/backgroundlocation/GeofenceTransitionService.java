package com.yelp.android.services.backgroundlocation;

import android.app.IntentService;
import android.content.Intent;
import com.google.android.gms.location.h;
import com.yelp.android.appdata.AppData;

public class GeofenceTransitionService
  extends IntentService
{
  public GeofenceTransitionService()
  {
    super("GeofenceTransitionService");
  }
  
  protected void onHandleIntent(Intent paramIntent)
  {
    paramIntent = h.a(paramIntent);
    AppData.b().s().a(paramIntent);
  }
}

/* Location:
 * Qualified Name:     com.yelp.android.services.backgroundlocation.GeofenceTransitionService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */