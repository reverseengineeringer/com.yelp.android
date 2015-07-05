package com.kahuna.sdk.location;

import android.util.Log;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.location.FusedLocationProviderApi;
import com.google.android.gms.location.LocationServices;
import java.util.TimerTask;
import java.util.concurrent.TimeUnit;

class h
  extends TimerTask
{
  h(f paramf) {}
  
  public void run()
  {
    try
    {
      LocationServices.FusedLocationApi.removeLocationUpdates(f.a(a), f.b(a)).await(5000L, TimeUnit.MILLISECONDS);
      if (com.kahuna.sdk.h.p()) {
        Log.d("KahunaEngine", "Finished requesting for gps updates for geofences.");
      }
      f.c(a);
      return;
    }
    catch (Exception localException)
    {
      for (;;) {}
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.location.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */