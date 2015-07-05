package com.kahuna.sdk;

import android.content.Context;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.util.Log;
import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.TimeZone;
import java.util.Timer;
import java.util.concurrent.atomic.AtomicInteger;

final class p
  implements Runnable
{
  public void run()
  {
    h localh = h.a();
    if (!h.b(localh)) {
      h.c(localh);
    }
    for (;;)
    {
      Object localObject3;
      synchronized (h.q())
      {
        if (h.h(localh).incrementAndGet() == 1)
        {
          if (aa.a()) {
            aa.a(h.i(localh), h.j(localh), h.k(localh));
          }
          h.a(aa.b(h.a(localh)));
          if (h.l(localh) != null)
          {
            h.l(localh).cancel();
            h.a(localh, null);
            return;
          }
          if ((h.m(localh)) && (!aj.a(h.c)))
          {
            localObject3 = f.a();
            if (!"".equals(localObject3)) {
              break label298;
            }
            if (h.a) {
              Log.d("KahunaAnalytics", "Device not registered yet, will now register with GCM");
            }
            h.c("");
            f.a(h.c);
          }
          if (ag.d(h.a(localh))) {
            h.a(localh, new Event("k_user_credentials", System.currentTimeMillis() / 1000L, h.n(localh), null, null, null));
          }
          ag.b(false, h.a(localh));
        }
      }
      try
      {
        Object localObject4 = agetResourcesgetConfigurationlocale;
        localObject3 = TimeZone.getDefault();
        localObject3 = ((TimeZone)localObject3).getDisplayName(((TimeZone)localObject3).inDaylightTime(new Date(System.currentTimeMillis())), 0);
        localObject4 = ((Locale)localObject4).getLanguage();
        HashMap localHashMap = new HashMap();
        localHashMap.put("kahuna_tz", localObject3);
        localHashMap.put("kahuna_lang", localObject4);
        h.b(localHashMap);
        h.a(localh, new Event("Start", System.currentTimeMillis() / 1000L, null, null, null, null));
        h.o(localh);
        y.a();
        return;
        label298:
        h.c((String)localObject3);
        if (!h.a) {
          continue;
        }
        Log.d("KahunaAnalytics", "Device already registered");
        continue;
        localObject2 = finally;
        throw ((Throwable)localObject2);
      }
      catch (Exception localException)
      {
        for (;;)
        {
          if (h.a) {
            Log.d("KahunaAnalytics", "Exception occured trying to retrieve app language or timezone:" + localException);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */