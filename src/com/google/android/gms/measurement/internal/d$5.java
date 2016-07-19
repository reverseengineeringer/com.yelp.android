package com.google.android.gms.measurement.internal;

import android.os.RemoteException;

class d$5
  implements Runnable
{
  d$5(d paramd, UserAttributeParcel paramUserAttributeParcel) {}
  
  public void run()
  {
    w localw = d.c(b);
    if (localw == null)
    {
      b.s().b().a("Discarding data. Failed to set user attribute");
      return;
    }
    try
    {
      localw.a(a, b.i().a(b.s().A()));
      d.d(b);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      b.s().b().a("Failed to send attribute to AppMeasurementService", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.d.5
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */