package com.google.android.gms.analytics;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.ad;
import com.google.android.gms.analytics.internal.g;
import com.google.android.gms.analytics.internal.n;
import com.google.android.gms.analytics.internal.p;
import com.google.android.gms.analytics.internal.t;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.lh;
import com.google.android.gms.measurement.h;

public class CampaignTrackingService
  extends Service
{
  private static Boolean b;
  private Handler a;
  
  private void a()
  {
    try
    {
      synchronized (CampaignTrackingReceiver.a)
      {
        lh locallh = CampaignTrackingReceiver.b;
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
    boolean bool = n.a(paramContext, CampaignTrackingService.class);
    b = Boolean.valueOf(bool);
    return bool;
  }
  
  private Handler b()
  {
    Handler localHandler2 = a;
    Handler localHandler1 = localHandler2;
    if (localHandler2 == null)
    {
      localHandler1 = new Handler(getMainLooper());
      a = localHandler1;
    }
    return localHandler1;
  }
  
  protected void a(final g paramg, Handler paramHandler, final int paramInt)
  {
    paramHandler.post(new Runnable()
    {
      public void run()
      {
        boolean bool = stopSelfResult(paramInt);
        if (bool) {
          paramg.a("Install campaign broadcast processed", Boolean.valueOf(bool));
        }
      }
    });
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    t.a(this).f().b("CampaignTrackingService is starting up");
  }
  
  public void onDestroy()
  {
    t.a(this).f().b("CampaignTrackingService is shutting down");
    super.onDestroy();
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, final int paramInt2)
  {
    a();
    t localt = t.a(this);
    final g localg = localt.f();
    final Handler localHandler = null;
    if (localt.e().a()) {
      localg.f("Unexpected installation campaign (package side)");
    }
    for (paramIntent = localHandler;; paramIntent = paramIntent.getStringExtra("referrer"))
    {
      localHandler = b();
      if (!TextUtils.isEmpty(paramIntent)) {
        break;
      }
      if (!localt.e().a()) {
        localg.e("No campaign found on com.android.vending.INSTALL_REFERRER \"referrer\" extra");
      }
      localt.h().a(new Runnable()
      {
        public void run()
        {
          a(localg, localHandler, paramInt2);
        }
      });
      return 2;
    }
    paramInt1 = localt.e().e();
    if (paramIntent.length() <= paramInt1) {}
    for (;;)
    {
      localg.a("CampaignTrackingService called. startId, campaign", Integer.valueOf(paramInt2), paramIntent);
      localt.i().a(paramIntent, new Runnable()
      {
        public void run()
        {
          a(localg, localHandler, paramInt2);
        }
      });
      return 2;
      localg.c("Campaign data exceed the maximum supported size and will be clipped. size, limit", Integer.valueOf(paramIntent.length()), Integer.valueOf(paramInt1));
      paramIntent = paramIntent.substring(0, paramInt1);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.CampaignTrackingService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */