package com.kahuna.sdk;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;

final class l
  implements Runnable
{
  l(String paramString1, String paramString2) {}
  
  public void run()
  {
    try
    {
      h localh = h.a();
      HashMap localHashMap = new HashMap();
      localHashMap.put("id", a);
      localHashMap.put("status", b);
      localHashMap.put("type", "circle");
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
 * Qualified Name:     com.kahuna.sdk.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */