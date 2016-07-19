package com.kahuna.sdk;

import android.util.Log;
import com.kahuna.sdk.location.g;
import java.util.HashMap;
import java.util.Map;

class l$5
  implements Runnable
{
  l$5(l paraml, g paramg, String paramString) {}
  
  public void run()
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("id", a.a());
      localHashMap.put("status", b);
      localHashMap.put("type", "beacon");
      if (a.c() > -1) {
        localHashMap.put("major", Integer.valueOf(a.c()));
      }
      if (a.d() > -1) {
        localHashMap.put("minor", Integer.valueOf(a.d()));
      }
      Event localEvent = new Event("k_user_location", System.currentTimeMillis() / 1000L);
      localEvent.c(localHashMap);
      l.a(c, localEvent);
      return;
    }
    catch (Exception localException)
    {
      Log.d("Kahuna", "Handled exception in KahunaCommon.trackRegionMonitoringEvent(): " + localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.l.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */