package com.google.android.gms.analytics;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.ServiceConnection;
import android.os.RemoteException;
import com.google.android.gms.internal.ha;
import com.google.android.gms.internal.hb;
import java.util.List;
import java.util.Map;

class c
  implements b
{
  private Context mContext;
  private ServiceConnection xV;
  private c.b xW;
  private c.c xX;
  private hb xY;
  
  public c(Context paramContext, c.b paramb, c.c paramc)
  {
    mContext = paramContext;
    if (paramb == null) {
      throw new IllegalArgumentException("onConnectedListener cannot be null");
    }
    xW = paramb;
    if (paramc == null) {
      throw new IllegalArgumentException("onConnectionFailedListener cannot be null");
    }
    xX = paramc;
  }
  
  private hb dR()
  {
    dS();
    return xY;
  }
  
  private void dT()
  {
    dU();
  }
  
  private void dU()
  {
    xW.onConnected();
  }
  
  public void a(Map<String, String> paramMap, long paramLong, String paramString, List<ha> paramList)
  {
    try
    {
      dR().a(paramMap, paramLong, paramString, paramList);
      return;
    }
    catch (RemoteException paramMap)
    {
      ae.T("sendHit failed: " + paramMap);
    }
  }
  
  public void connect()
  {
    Intent localIntent = new Intent("com.google.android.gms.analytics.service.START");
    localIntent.setComponent(new ComponentName("com.google.android.gms", "com.google.android.gms.analytics.service.AnalyticsService"));
    localIntent.putExtra("app_package_name", mContext.getPackageName());
    if (xV != null) {
      ae.T("Calling connect() while still connected, missing disconnect().");
    }
    boolean bool;
    do
    {
      return;
      xV = new c.a(this);
      bool = mContext.bindService(localIntent, xV, 129);
      ae.V("connect: bindService returned " + bool + " for " + localIntent);
    } while (bool);
    xV = null;
    xX.a(1, null);
  }
  
  public void dQ()
  {
    try
    {
      dR().dQ();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      ae.T("clear hits failed: " + localRemoteException);
    }
  }
  
  protected void dS()
  {
    if (!isConnected()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  public void disconnect()
  {
    xY = null;
    if (xV != null) {}
    try
    {
      mContext.unbindService(xV);
      xV = null;
      xW.onDisconnected();
      return;
    }
    catch (IllegalArgumentException localIllegalArgumentException)
    {
      for (;;) {}
    }
    catch (IllegalStateException localIllegalStateException)
    {
      for (;;) {}
    }
  }
  
  public boolean isConnected()
  {
    return xY != null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.analytics.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */