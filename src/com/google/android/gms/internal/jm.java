package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import java.util.ArrayList;
import java.util.Iterator;

public final class jm
{
  private final jm.b MX;
  private final ArrayList<GoogleApiClient.ConnectionCallbacks> MY = new ArrayList();
  final ArrayList<GoogleApiClient.ConnectionCallbacks> MZ = new ArrayList();
  private boolean Na = false;
  private final ArrayList<GooglePlayServicesClient.OnConnectionFailedListener> Nb = new ArrayList();
  private final Handler mHandler;
  
  public jm(Context paramContext, Looper paramLooper, jm.b paramb)
  {
    MX = paramb;
    mHandler = new jm.a(this, paramLooper);
  }
  
  public void aE(int paramInt)
  {
    mHandler.removeMessages(1);
    synchronized (MY)
    {
      Na = true;
      Iterator localIterator = new ArrayList(MY).iterator();
      GoogleApiClient.ConnectionCallbacks localConnectionCallbacks;
      do
      {
        if (localIterator.hasNext())
        {
          localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)localIterator.next();
          if (MX.gN()) {}
        }
        else
        {
          Na = false;
          return;
        }
      } while (!MY.contains(localConnectionCallbacks));
      localConnectionCallbacks.onConnectionSuspended(paramInt);
    }
  }
  
  public void b(ConnectionResult paramConnectionResult)
  {
    mHandler.removeMessages(1);
    synchronized (Nb)
    {
      Iterator localIterator = new ArrayList(Nb).iterator();
      while (localIterator.hasNext())
      {
        GooglePlayServicesClient.OnConnectionFailedListener localOnConnectionFailedListener = (GooglePlayServicesClient.OnConnectionFailedListener)localIterator.next();
        if (!MX.gN()) {
          return;
        }
        if (Nb.contains(localOnConnectionFailedListener)) {
          localOnConnectionFailedListener.onConnectionFailed(paramConnectionResult);
        }
      }
    }
  }
  
  protected void dU()
  {
    synchronized (MY)
    {
      f(MX.fX());
      return;
    }
  }
  
  public void f(Bundle paramBundle)
  {
    boolean bool2 = true;
    for (;;)
    {
      synchronized (MY)
      {
        if (!Na)
        {
          bool1 = true;
          jx.K(bool1);
          mHandler.removeMessages(1);
          Na = true;
          if (MZ.size() != 0) {
            break label165;
          }
          bool1 = bool2;
          jx.K(bool1);
          Iterator localIterator = new ArrayList(MY).iterator();
          GoogleApiClient.ConnectionCallbacks localConnectionCallbacks;
          if (localIterator.hasNext())
          {
            localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)localIterator.next();
            if ((MX.gN()) && (MX.isConnected())) {}
          }
          else
          {
            MZ.clear();
            Na = false;
            return;
          }
          if (MZ.contains(localConnectionCallbacks)) {
            continue;
          }
          localConnectionCallbacks.onConnected(paramBundle);
        }
      }
      boolean bool1 = false;
      continue;
      label165:
      bool1 = false;
    }
  }
  
  public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    jx.i(paramConnectionCallbacks);
    synchronized (MY)
    {
      boolean bool = MY.contains(paramConnectionCallbacks);
      return bool;
    }
  }
  
  public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    jx.i(paramOnConnectionFailedListener);
    synchronized (Nb)
    {
      boolean bool = Nb.contains(paramOnConnectionFailedListener);
      return bool;
    }
  }
  
  public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    jx.i(paramConnectionCallbacks);
    synchronized (MY)
    {
      if (MY.contains(paramConnectionCallbacks))
      {
        Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + paramConnectionCallbacks + " is already registered");
        if (MX.isConnected()) {
          mHandler.sendMessage(mHandler.obtainMessage(1, paramConnectionCallbacks));
        }
        return;
      }
      MY.add(paramConnectionCallbacks);
    }
  }
  
  public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    jx.i(paramOnConnectionFailedListener);
    synchronized (Nb)
    {
      if (Nb.contains(paramOnConnectionFailedListener))
      {
        Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + paramOnConnectionFailedListener + " is already registered");
        return;
      }
      Nb.add(paramOnConnectionFailedListener);
    }
  }
  
  public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    jx.i(paramConnectionCallbacks);
    synchronized (MY)
    {
      if (MY != null)
      {
        if (MY.remove(paramConnectionCallbacks)) {
          break label63;
        }
        Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + paramConnectionCallbacks + " not found");
      }
      label63:
      while (!Na) {
        return;
      }
      MZ.add(paramConnectionCallbacks);
    }
  }
  
  public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    jx.i(paramOnConnectionFailedListener);
    synchronized (Nb)
    {
      if ((Nb != null) && (!Nb.remove(paramOnConnectionFailedListener))) {
        Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + paramOnConnectionFailedListener + " not found");
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */