package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.analytics.internal.ad;
import com.google.android.gms.analytics.internal.g;
import com.google.android.gms.analytics.internal.n;
import com.google.android.gms.analytics.internal.t;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.lh;

public final class AnalyticsReceiver
  extends BroadcastReceiver
{
  static Object a = new Object();
  static lh b;
  static Boolean c;
  
  public static boolean a(Context paramContext)
  {
    zzx.zzz(paramContext);
    if (c != null) {
      return c.booleanValue();
    }
    boolean bool = n.a(paramContext, AnalyticsReceiver.class, false);
    c = Boolean.valueOf(bool);
    return bool;
  }
  
  public void onReceive(Context paramContext, Intent arg2)
  {
    Object localObject = t.a(paramContext);
    localg = ((t)localObject).f();
    ??? = ???.getAction();
    if (((t)localObject).e().a()) {
      localg.a("Device AnalyticsReceiver got", ???);
    }
    for (;;)
    {
      boolean bool;
      if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(???))
      {
        bool = AnalyticsService.a(paramContext);
        localObject = new Intent(paramContext, AnalyticsService.class);
        ((Intent)localObject).setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
      }
      synchronized (a)
      {
        paramContext.startService((Intent)localObject);
        if (!bool)
        {
          return;
          localg.a("Local AnalyticsReceiver got", ???);
          continue;
        }
        try
        {
          if (b == null)
          {
            b = new lh(paramContext, 1, "Analytics WakeLock");
            b.a(false);
          }
          b.a(1000L);
        }
        catch (SecurityException paramContext)
        {
          for (;;)
          {
            localg.e("Analytics service at risk of not starting. For more reliable analytics, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
          }
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.AnalyticsReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */