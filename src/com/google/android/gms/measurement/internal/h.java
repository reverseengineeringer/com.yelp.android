package com.google.android.gms.measurement.internal;

import android.app.AlarmManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.jt;
import com.google.android.gms.measurement.AppMeasurementReceiver;
import com.google.android.gms.measurement.AppMeasurementService;

public class h
  extends aj
{
  private boolean a;
  private final AlarmManager b = (AlarmManager)m().getSystemService("alarm");
  
  protected h(ag paramag)
  {
    super(paramag);
  }
  
  private PendingIntent c()
  {
    Intent localIntent = new Intent(m(), AppMeasurementReceiver.class);
    localIntent.setAction("com.google.android.gms.measurement.UPLOAD");
    return PendingIntent.getBroadcast(m(), 0, localIntent, 0);
  }
  
  protected void a()
  {
    b.cancel(c());
  }
  
  public void a(long paramLong)
  {
    G();
    if (paramLong > 0L) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzac(bool);
      zzx.zza(AppMeasurementReceiver.a(m()), "Receiver not registered/enabled");
      zzx.zza(AppMeasurementService.a(m()), "Service not registered/enabled");
      b();
      long l = l().b();
      a = true;
      b.setInexactRepeating(2, l + paramLong, Math.max(u().Z(), paramLong), c());
      return;
    }
  }
  
  public void b()
  {
    G();
    a = false;
    b.cancel(c());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */