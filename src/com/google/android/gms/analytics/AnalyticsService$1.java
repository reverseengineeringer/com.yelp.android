package com.google.android.gms.analytics;

import android.os.Handler;
import com.google.android.gms.analytics.internal.ad;
import com.google.android.gms.analytics.internal.ai;
import com.google.android.gms.analytics.internal.g;
import com.google.android.gms.analytics.internal.t;

class AnalyticsService$1
  implements ai
{
  AnalyticsService$1(AnalyticsService paramAnalyticsService, int paramInt, t paramt, g paramg) {}
  
  public void a(Throwable paramThrowable)
  {
    AnalyticsService.a(d).post(new Runnable()
    {
      public void run()
      {
        if (d.stopSelfResult(a))
        {
          if (b.e().a()) {
            c.b("Device AnalyticsService processed last dispatch request");
          }
        }
        else {
          return;
        }
        c.b("Local AnalyticsService processed last dispatch request");
      }
    });
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.AnalyticsService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */