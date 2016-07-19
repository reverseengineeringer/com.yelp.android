package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

class d$3
  implements Runnable
{
  d$3(d paramd) {}
  
  public void run()
  {
    w localw = d.c(a);
    if (localw == null)
    {
      a.s().b().a("Failed to send measurementEnabled to service");
      return;
    }
    try
    {
      localw.b(a.i().a(a.s().A()));
      d.d(a);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      a.s().b().a("Failed to send measurementEnabled to AppMeasurementService", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.d.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */