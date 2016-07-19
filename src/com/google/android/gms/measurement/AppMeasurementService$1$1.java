package com.google.android.gms.measurement;

import com.google.android.gms.measurement.internal.ag;
import com.google.android.gms.measurement.internal.n;
import com.google.android.gms.measurement.internal.z;
import com.google.android.gms.measurement.internal.z.a;

class AppMeasurementService$1$1
  implements Runnable
{
  AppMeasurementService$1$1(AppMeasurementService.1 param1) {}
  
  public void run()
  {
    if (a.d.stopSelfResult(a.b))
    {
      if (a.a.d().N()) {
        a.c.z().a("Device AppMeasurementService processed last upload request");
      }
    }
    else {
      return;
    }
    a.c.z().a("Local AppMeasurementService processed last upload request");
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.AppMeasurementService.1.1
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */