package com.kahuna.sdk.location;

import android.util.Log;
import com.google.android.gms.common.api.PendingResult;
import com.google.android.gms.location.e;
import java.util.TimerTask;
import java.util.concurrent.TimeUnit;

class f$2
  extends TimerTask
{
  f$2(f paramf) {}
  
  public void run()
  {
    try
    {
      com.google.android.gms.location.l.b.a(f.a(a), f.b(a)).await(5000L, TimeUnit.MILLISECONDS);
      if (com.kahuna.sdk.l.u()) {
        Log.d("Kahuna", "Finished requesting for gps updates for geofences.");
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
 * Qualified Name:     com.kahuna.sdk.location.f.2
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */