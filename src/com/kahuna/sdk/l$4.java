package com.kahuna.sdk;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;

class l$4
  implements Runnable
{
  l$4(l paraml, String paramString1, String paramString2) {}
  
  public void run()
  {
    try
    {
      HashMap localHashMap = new HashMap();
      localHashMap.put("id", a);
      localHashMap.put("status", b);
      localHashMap.put("type", "circle");
      Event localEvent = new Event("k_user_location");
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
 * Qualified Name:     com.kahuna.sdk.l.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */