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

class l$9
  implements Runnable
{
  l$9(l paraml) {}
  
  public void run()
  {
    if (!l.b(a)) {
      l.c(a);
    }
    for (;;)
    {
      Object localObject2;
      synchronized (l.v())
      {
        if (l.g(a).incrementAndGet() == 1)
        {
          if (q.a()) {
            q.a(l.h(a), l.i(a), l.j(a));
          }
          l.a(q.b(l.a(a)));
          if (l.k(a) != null)
          {
            l.k(a).cancel();
            l.a(a, null);
            return;
          }
          if ((l.l(a)) && (!w.a(l.c)))
          {
            localObject2 = f.b();
            if (!"".equals(localObject2)) {
              break label284;
            }
            if (l.a) {
              Log.d("Kahuna", "Device not registered yet, will now register with GCM");
            }
            a.c("");
            f.a(l.c);
          }
          l.a(a, new Event("Start"));
        }
      }
      try
      {
        Object localObject4 = aa).getResources().getConfiguration().locale;
        localObject2 = TimeZone.getDefault();
        localObject2 = ((TimeZone)localObject2).getDisplayName(((TimeZone)localObject2).inDaylightTime(new Date(System.currentTimeMillis())), 0);
        localObject4 = ((Locale)localObject4).getLanguage();
        HashMap localHashMap = new HashMap();
        localHashMap.put("kahuna_tz", localObject2);
        localHashMap.put("kahuna_lang", localObject4);
        l.a(a, localHashMap);
        l.m(a);
        o.a();
        return;
        label284:
        a.c((String)localObject2);
        if (!l.a) {
          continue;
        }
        Log.d("Kahuna", "Device already registered");
        continue;
        localObject3 = finally;
        throw ((Throwable)localObject3);
      }
      catch (Exception localException)
      {
        for (;;)
        {
          if (l.a) {
            Log.d("Kahuna", "Exception occured trying to retrieve app language or timezone:" + localException);
          }
        }
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.kahuna.sdk.l.9
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */