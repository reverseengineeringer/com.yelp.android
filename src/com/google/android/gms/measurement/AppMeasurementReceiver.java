package com.google.android.gms.measurement;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.lh;
import com.google.android.gms.measurement.internal.ag;
import com.google.android.gms.measurement.internal.k;
import com.google.android.gms.measurement.internal.n;
import com.google.android.gms.measurement.internal.z;
import com.google.android.gms.measurement.internal.z.a;

public final class AppMeasurementReceiver
  extends BroadcastReceiver
{
  static final Object a = new Object();
  static lh b;
  static Boolean c;
  
  public static boolean a(Context paramContext)
  {
    zzx.zzz(paramContext);
    if (c != null) {
      return c.booleanValue();
    }
    boolean bool = k.a(paramContext, AppMeasurementReceiver.class, false);
    c = Boolean.valueOf(bool);
    return bool;
  }
  
  public void onReceive(Context paramContext, Intent arg2)
  {
    Object localObject = ag.a(paramContext);
    localz = ((ag)localObject).f();
    ??? = ???.getAction();
    if (((ag)localObject).d().N()) {
      localz.z().a("Device AppMeasurementReceiver got", ???);
    }
    for (;;)
    {
      boolean bool;
      if ("com.google.android.gms.measurement.UPLOAD".equals(???))
      {
        bool = AppMeasurementService.a(paramContext);
        localObject = new Intent(paramContext, AppMeasurementService.class);
        ((Intent)localObject).setAction("com.google.android.gms.measurement.UPLOAD");
      }
      synchronized (a)
      {
        paramContext.startService((Intent)localObject);
        if (!bool)
        {
          return;
          localz.z().a("Local AppMeasurementReceiver got", ???);
          continue;
        }
        try
        {
          if (b == null)
          {
            b = new lh(paramContext, 1, "AppMeasurement WakeLock");
            b.a(false);
          }
          b.a(1000L);
        }
        catch (SecurityException paramContext)
        {
          for (;;)
          {
            localz.c().a("AppMeasurementService at risk of not starting. For more reliable app measurements, add the WAKE_LOCK permission to your manifest.");
          }
        }
        return;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.AppMeasurementReceiver
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */