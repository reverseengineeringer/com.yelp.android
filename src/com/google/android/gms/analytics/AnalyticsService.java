package com.google.android.gms.analytics;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import com.google.android.gms.analytics.internal.ad;
import com.google.android.gms.analytics.internal.ai;
import com.google.android.gms.analytics.internal.g;
import com.google.android.gms.analytics.internal.n;
import com.google.android.gms.analytics.internal.p;
import com.google.android.gms.analytics.internal.t;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.lh;

public final class AnalyticsService
  extends Service
{
  private static Boolean b;
  private final Handler a = new Handler();
  
  private void a()
  {
    try
    {
      synchronized (AnalyticsReceiver.a)
      {
        lh locallh = AnalyticsReceiver.b;
        if ((locallh != null) && (locallh.b())) {
          locallh.a();
        }
        return;
      }
      return;
    }
    catch (SecurityException localSecurityException) {}
  }
  
  public static boolean a(Context paramContext)
  {
    zzx.zzz(paramContext);
    if (b != null) {
      return b.booleanValue();
    }
    boolean bool = n.a(paramContext, AnalyticsService.class);
    b = Boolean.valueOf(bool);
    return bool;
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    t localt = t.a(this);
    g localg = localt.f();
    if (localt.e().a())
    {
      localg.b("Device AnalyticsService is starting up");
      return;
    }
    localg.b("Local AnalyticsService is starting up");
  }
  
  public void onDestroy()
  {
    t localt = t.a(this);
    g localg = localt.f();
    if (localt.e().a()) {
      localg.b("Device AnalyticsService is shutting down");
    }
    for (;;)
    {
      super.onDestroy();
      return;
      localg.b("Local AnalyticsService is shutting down");
    }
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, final int paramInt2)
  {
    a();
    final t localt = t.a(this);
    final g localg = localt.f();
    paramIntent = paramIntent.getAction();
    if (localt.e().a()) {
      localg.a("Device AnalyticsService called. startId, action", Integer.valueOf(paramInt2), paramIntent);
    }
    for (;;)
    {
      if ("com.google.android.gms.analytics.ANALYTICS_DISPATCH".equals(paramIntent)) {
        localt.i().a(new ai()
        {
          public void a(Throwable paramAnonymousThrowable)
          {
            AnalyticsService.a(AnalyticsService.this).post(new Runnable()
            {
              public void run()
              {
                if (stopSelfResult(a))
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
        });
      }
      return 2;
      localg.a("Local AnalyticsService called. startId, action", Integer.valueOf(paramInt2), paramIntent);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.AnalyticsService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */