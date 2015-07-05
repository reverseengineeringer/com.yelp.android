package com.google.android.gms.analytics;

import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.hb.a;

final class c$a
  implements ServiceConnection
{
  c$a(c paramc) {}
  
  public void onServiceConnected(ComponentName paramComponentName, IBinder paramIBinder)
  {
    ae.V("service connected, binder: " + paramIBinder);
    try
    {
      if ("com.google.android.gms.analytics.internal.IAnalyticsService".equals(paramIBinder.getInterfaceDescriptor()))
      {
        ae.V("bound to service");
        c.a(xZ, hb.a.D(paramIBinder));
        c.a(xZ);
        return;
      }
    }
    catch (RemoteException paramComponentName) {}
    try
    {
      c.b(xZ).unbindService(this);
      c.a(xZ, null);
      c.c(xZ).a(2, null);
      return;
    }
    catch (IllegalArgumentException paramComponentName)
    {
      for (;;) {}
    }
  }
  
  public void onServiceDisconnected(ComponentName paramComponentName)
  {
    ae.V("service disconnected: " + paramComponentName);
    c.a(xZ, null);
    c.d(xZ).onDisconnected();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.c.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */