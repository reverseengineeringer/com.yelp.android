package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;

class d$4
  implements Runnable
{
  d$4(d paramd, String paramString, EventParcel paramEventParcel) {}
  
  public void run()
  {
    w localw = d.c(c);
    if (localw == null)
    {
      c.s().b().a("Discarding data. Failed to send event to service");
      return;
    }
    for (;;)
    {
      try
      {
        if (TextUtils.isEmpty(a))
        {
          localw.a(b, c.i().a(c.s().A()));
          d.d(c);
          return;
        }
      }
      catch (RemoteException localRemoteException)
      {
        c.s().b().a("Failed to send event to AppMeasurementService", localRemoteException);
        return;
      }
      localRemoteException.a(b, a, c.s().A());
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.d.4
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */