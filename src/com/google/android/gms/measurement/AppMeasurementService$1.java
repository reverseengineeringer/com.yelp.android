package com.google.android.gms.measurement;

import android.os.Handler;
import com.google.android.gms.measurement.internal.ag;
import com.google.android.gms.measurement.internal.n;
import com.google.android.gms.measurement.internal.z;
import com.google.android.gms.measurement.internal.z.a;

class AppMeasurementService$1
  implements Runnable
{
  AppMeasurementService$1(AppMeasurementService paramAppMeasurementService, ag paramag, int paramInt, z paramz) {}
  
  public void run()
  {
    a.B();
    AppMeasurementService.a(d).post(new Runnable()
    {
      public void run()
      {
        if (d.stopSelfResult(b))
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.AppMeasurementService.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */