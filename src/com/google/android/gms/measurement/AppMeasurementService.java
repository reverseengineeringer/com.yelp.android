package com.google.android.gms.measurement;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Handler;
import android.os.IBinder;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.lh;
import com.google.android.gms.measurement.internal.af;
import com.google.android.gms.measurement.internal.ag;
import com.google.android.gms.measurement.internal.ah;
import com.google.android.gms.measurement.internal.k;
import com.google.android.gms.measurement.internal.n;
import com.google.android.gms.measurement.internal.z;
import com.google.android.gms.measurement.internal.z.a;

public final class AppMeasurementService
  extends Service
{
  private static Boolean b;
  private final Handler a = new Handler();
  
  private void a()
  {
    try
    {
      synchronized (AppMeasurementReceiver.a)
      {
        lh locallh = AppMeasurementReceiver.b;
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
    boolean bool = k.a(paramContext, AppMeasurementService.class);
    b = Boolean.valueOf(bool);
    return bool;
  }
  
  private z b()
  {
    return ag.a(this).f();
  }
  
  public IBinder onBind(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      b().b().a("onBind called with null intent");
      return null;
    }
    paramIntent = paramIntent.getAction();
    if ("com.google.android.gms.measurement.START".equals(paramIntent)) {
      return new ah(ag.a(this));
    }
    b().c().a("onBind received unknown action", paramIntent);
    return null;
  }
  
  public void onCreate()
  {
    super.onCreate();
    ag localag = ag.a(this);
    z localz = localag.f();
    if (localag.d().N())
    {
      localz.z().a("Device AppMeasurementService is starting up");
      return;
    }
    localz.z().a("Local AppMeasurementService is starting up");
  }
  
  public void onDestroy()
  {
    ag localag = ag.a(this);
    z localz = localag.f();
    if (localag.d().N()) {
      localz.z().a("Device AppMeasurementService is shutting down");
    }
    for (;;)
    {
      super.onDestroy();
      return;
      localz.z().a("Local AppMeasurementService is shutting down");
    }
  }
  
  public void onRebind(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      b().b().a("onRebind called with null intent");
      return;
    }
    paramIntent = paramIntent.getAction();
    b().z().a("onRebind called. action", paramIntent);
  }
  
  public int onStartCommand(Intent paramIntent, int paramInt1, final int paramInt2)
  {
    a();
    final ag localag = ag.a(this);
    final z localz = localag.f();
    paramIntent = paramIntent.getAction();
    if (localag.d().N()) {
      localz.z().a("Device AppMeasurementService called. startId, action", Integer.valueOf(paramInt2), paramIntent);
    }
    for (;;)
    {
      if ("com.google.android.gms.measurement.UPLOAD".equals(paramIntent)) {
        localag.h().a(new Runnable()
        {
          public void run()
          {
            localag.B();
            AppMeasurementService.a(AppMeasurementService.this).post(new Runnable()
            {
              public void run()
              {
                if (stopSelfResult(b))
                {
                  if (a.d().N()) {
                    c.z().a("Device AppMeasurementService processed last upload request");
                  }
                }
                else {
                  return;
                }
                c.z().a("Local AppMeasurementService processed last upload request");
              }
            });
          }
        });
      }
      return 2;
      localz.z().a("Local AppMeasurementService called. startId, action", Integer.valueOf(paramInt2), paramIntent);
    }
  }
  
  public boolean onUnbind(Intent paramIntent)
  {
    if (paramIntent == null)
    {
      b().b().a("onUnbind called with null intent");
      return true;
    }
    paramIntent = paramIntent.getAction();
    b().z().a("onUnbind called for intent. action", paramIntent);
    return true;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.AppMeasurementService
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */