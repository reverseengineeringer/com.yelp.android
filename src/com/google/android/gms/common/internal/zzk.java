package com.google.android.gms.common.internal;

import android.os.Bundle;
import android.os.Handler;
import android.os.Handler.Callback;
import android.os.Looper;
import android.os.Message;
import android.util.Log;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;

public final class zzk
  implements Handler.Callback
{
  private final Handler mHandler;
  private final zza zzalQ;
  private final ArrayList<GoogleApiClient.ConnectionCallbacks> zzalR = new ArrayList();
  final ArrayList<GoogleApiClient.ConnectionCallbacks> zzalS = new ArrayList();
  private final ArrayList<GoogleApiClient.OnConnectionFailedListener> zzalT = new ArrayList();
  private volatile boolean zzalU = false;
  private final AtomicInteger zzalV = new AtomicInteger(0);
  private boolean zzalW = false;
  private final Object zzpV = new Object();
  
  public zzk(Looper paramLooper, zza paramzza)
  {
    zzalQ = paramzza;
    mHandler = new Handler(paramLooper, this);
  }
  
  public boolean handleMessage(Message arg1)
  {
    if (what == 1)
    {
      GoogleApiClient.ConnectionCallbacks localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)obj;
      synchronized (zzpV)
      {
        if ((zzalU) && (zzalQ.isConnected()) && (zzalR.contains(localConnectionCallbacks))) {
          localConnectionCallbacks.onConnected(zzalQ.zzoi());
        }
        return true;
      }
    }
    Log.wtf("GmsClientEvents", "Don't know how to handle message: " + what, new Exception());
    return false;
  }
  
  public boolean isConnectionCallbacksRegistered(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    zzx.zzz(paramConnectionCallbacks);
    synchronized (zzpV)
    {
      boolean bool = zzalR.contains(paramConnectionCallbacks);
      return bool;
    }
  }
  
  public boolean isConnectionFailedListenerRegistered(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    zzx.zzz(paramOnConnectionFailedListener);
    synchronized (zzpV)
    {
      boolean bool = zzalT.contains(paramOnConnectionFailedListener);
      return bool;
    }
  }
  
  public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    zzx.zzz(paramConnectionCallbacks);
    synchronized (zzpV)
    {
      if (zzalR.contains(paramConnectionCallbacks))
      {
        Log.w("GmsClientEvents", "registerConnectionCallbacks(): listener " + paramConnectionCallbacks + " is already registered");
        if (zzalQ.isConnected()) {
          mHandler.sendMessage(mHandler.obtainMessage(1, paramConnectionCallbacks));
        }
        return;
      }
      zzalR.add(paramConnectionCallbacks);
    }
  }
  
  public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    zzx.zzz(paramOnConnectionFailedListener);
    synchronized (zzpV)
    {
      if (zzalT.contains(paramOnConnectionFailedListener))
      {
        Log.w("GmsClientEvents", "registerConnectionFailedListener(): listener " + paramOnConnectionFailedListener + " is already registered");
        return;
      }
      zzalT.add(paramOnConnectionFailedListener);
    }
  }
  
  public void unregisterConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    zzx.zzz(paramConnectionCallbacks);
    synchronized (zzpV)
    {
      if (!zzalR.remove(paramConnectionCallbacks)) {
        Log.w("GmsClientEvents", "unregisterConnectionCallbacks(): listener " + paramConnectionCallbacks + " not found");
      }
      while (!zzalW) {
        return;
      }
      zzalS.add(paramConnectionCallbacks);
    }
  }
  
  public void unregisterConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    zzx.zzz(paramOnConnectionFailedListener);
    synchronized (zzpV)
    {
      if (!zzalT.remove(paramOnConnectionFailedListener)) {
        Log.w("GmsClientEvents", "unregisterConnectionFailedListener(): listener " + paramOnConnectionFailedListener + " not found");
      }
      return;
    }
  }
  
  public void zzbT(int paramInt)
  {
    boolean bool = false;
    if (Looper.myLooper() == mHandler.getLooper()) {
      bool = true;
    }
    zzx.zza(bool, "onUnintentionalDisconnection must only be called on the Handler thread");
    mHandler.removeMessages(1);
    synchronized (zzpV)
    {
      zzalW = true;
      Object localObject2 = new ArrayList(zzalR);
      int i = zzalV.get();
      localObject2 = ((ArrayList)localObject2).iterator();
      GoogleApiClient.ConnectionCallbacks localConnectionCallbacks;
      do
      {
        if (((Iterator)localObject2).hasNext())
        {
          localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)((Iterator)localObject2).next();
          if ((zzalU) && (zzalV.get() == i)) {}
        }
        else
        {
          zzalS.clear();
          zzalW = false;
          return;
        }
      } while (!zzalR.contains(localConnectionCallbacks));
      localConnectionCallbacks.onConnectionSuspended(paramInt);
    }
  }
  
  public void zzk(Bundle paramBundle)
  {
    boolean bool2 = true;
    boolean bool1;
    if (Looper.myLooper() == mHandler.getLooper())
    {
      bool1 = true;
      zzx.zza(bool1, "onConnectionSuccess must only be called on the Handler thread");
    }
    for (;;)
    {
      synchronized (zzpV)
      {
        if (zzalW) {
          break label206;
        }
        bool1 = true;
        zzx.zzab(bool1);
        mHandler.removeMessages(1);
        zzalW = true;
        if (zzalS.size() != 0) {
          break label211;
        }
        bool1 = bool2;
        zzx.zzab(bool1);
        Object localObject2 = new ArrayList(zzalR);
        int i = zzalV.get();
        localObject2 = ((ArrayList)localObject2).iterator();
        GoogleApiClient.ConnectionCallbacks localConnectionCallbacks;
        if (((Iterator)localObject2).hasNext())
        {
          localConnectionCallbacks = (GoogleApiClient.ConnectionCallbacks)((Iterator)localObject2).next();
          if ((zzalU) && (zzalQ.isConnected()) && (zzalV.get() == i)) {}
        }
        else
        {
          zzalS.clear();
          zzalW = false;
          return;
        }
        if (zzalS.contains(localConnectionCallbacks)) {
          continue;
        }
        localConnectionCallbacks.onConnected(paramBundle);
      }
      bool1 = false;
      break;
      label206:
      bool1 = false;
      continue;
      label211:
      bool1 = false;
    }
  }
  
  public void zzk(ConnectionResult paramConnectionResult)
  {
    if (Looper.myLooper() == mHandler.getLooper()) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zza(bool, "onConnectionFailure must only be called on the Handler thread");
      mHandler.removeMessages(1);
      synchronized (zzpV)
      {
        Object localObject2 = new ArrayList(zzalT);
        int i = zzalV.get();
        localObject2 = ((ArrayList)localObject2).iterator();
        while (((Iterator)localObject2).hasNext())
        {
          GoogleApiClient.OnConnectionFailedListener localOnConnectionFailedListener = (GoogleApiClient.OnConnectionFailedListener)((Iterator)localObject2).next();
          if ((!zzalU) || (zzalV.get() != i)) {
            return;
          }
          if (zzalT.contains(localOnConnectionFailedListener)) {
            localOnConnectionFailedListener.onConnectionFailed(paramConnectionResult);
          }
        }
      }
      return;
    }
  }
  
  public void zzqQ()
  {
    zzalU = false;
    zzalV.incrementAndGet();
  }
  
  public void zzqR()
  {
    zzalU = true;
  }
  
  public static abstract interface zza
  {
    public abstract boolean isConnected();
    
    public abstract Bundle zzoi();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.common.internal.zzk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */