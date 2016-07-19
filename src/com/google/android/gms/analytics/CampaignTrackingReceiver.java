package com.google.android.gms.analytics;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.analytics.internal.ad;
import com.google.android.gms.analytics.internal.g;
import com.google.android.gms.analytics.internal.n;
import com.google.android.gms.analytics.internal.t;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.lh;

public class CampaignTrackingReceiver
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
    boolean bool = n.a(paramContext, CampaignTrackingReceiver.class, true);
    c = Boolean.valueOf(bool);
    return bool;
  }
  
  protected Class<? extends CampaignTrackingService> a()
  {
    return CampaignTrackingService.class;
  }
  
  protected void a(String paramString) {}
  
  public void onReceive(Context paramContext, Intent arg2)
  {
    Object localObject = t.a(paramContext);
    localg = ((t)localObject).f();
    String str = ???.getStringExtra("referrer");
    ??? = ???.getAction();
    localg.a("CampaignTrackingReceiver received", ???);
    if ((!"com.android.vending.INSTALL_REFERRER".equals(???)) || (TextUtils.isEmpty(str)))
    {
      localg.e("CampaignTrackingReceiver received unexpected intent without referrer extra");
      return;
    }
    boolean bool = CampaignTrackingService.a(paramContext);
    if (!bool) {
      localg.e("CampaignTrackingService not registered or disabled. Installation tracking not possible. See http://goo.gl/8Rd3yj for instructions.");
    }
    a(str);
    if (((t)localObject).e().a())
    {
      localg.f("Received unexpected installation campaign on package side");
      return;
    }
    ??? = a();
    zzx.zzz(???);
    localObject = new Intent(paramContext, ???);
    ((Intent)localObject).putExtra("referrer", str);
    synchronized (a)
    {
      paramContext.startService((Intent)localObject);
      if (!bool) {
        return;
      }
    }
    try
    {
      if (b == null)
      {
        b = new lh(paramContext, 1, "Analytics campaign WakeLock");
        b.a(false);
      }
      b.a(1000L);
    }
    catch (SecurityException paramContext)
    {
      for (;;)
      {
        localg.e("CampaignTrackingService service at risk of not starting. For more reliable installation campaign reports, add the WAKE_LOCK permission to your manifest. See http://goo.gl/8Rd3yj for instructions.");
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.CampaignTrackingReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */