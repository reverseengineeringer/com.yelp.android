package com.google.android.gms.analytics.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import com.google.android.gms.analytics.AnalyticsReceiver;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;

public class ah
  extends r
{
  private boolean a;
  private boolean b;
  private AlarmManager c = (AlarmManager)o().getSystemService("alarm");
  
  protected ah(t paramt)
  {
    super(paramt);
  }
  
  private PendingIntent f()
  {
    Intent localIntent = new Intent(o(), AnalyticsReceiver.class);
    localIntent.setAction("com.google.android.gms.analytics.ANALYTICS_DISPATCH");
    return PendingIntent.getBroadcast(o(), 0, localIntent, 0);
  }
  
  protected void a()
  {
    try
    {
      c.cancel(f());
      if (q().j() > 0L)
      {
        ActivityInfo localActivityInfo = o().getPackageManager().getReceiverInfo(new ComponentName(o(), AnalyticsReceiver.class), 2);
        if ((localActivityInfo != null) && (enabled))
        {
          b("Receiver registered. Using alarm for local dispatch.");
          a = true;
        }
      }
      return;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException) {}
  }
  
  public boolean b()
  {
    return a;
  }
  
  public boolean c()
  {
    return b;
  }
  
  public void d()
  {
    D();
    zzx.zza(b(), "Receiver not registered");
    long l1 = q().j();
    if (l1 > 0L)
    {
      e();
      long l2 = n().b();
      b = true;
      c.setInexactRepeating(2, l2 + l1, 0L, f());
    }
  }
  
  public void e()
  {
    D();
    b = false;
    c.cancel(f());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.internal.ah
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */