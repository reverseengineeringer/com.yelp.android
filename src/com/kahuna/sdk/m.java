package com.kahuna.sdk;

import android.util.Log;
import com.kahuna.sdk.location.i;
import java.util.HashMap;
import java.util.Map;

final class m
  implements Runnable
{
  m(i parami, String paramString) {}
  
  public void run()
  {
    try
    {
      h localh = h.a();
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
      h.a(localh, new Event("k_user_location", System.currentTimeMillis() / 1000L, null, null, localHashMap, null));
      return;
    }
    catch (Exception localException)
    {
      Log.d("KahunaAnalytics", "Handled exception in KahunaAnalytics.trackRegionMonitoringEvent(): " + localException);
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */