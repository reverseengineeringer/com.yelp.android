package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.DeadObjectException;
import android.os.Handler;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.GooglePlayServicesClient.ConnectionCallbacks;
import com.google.android.gms.common.GooglePlayServicesClient.OnConnectionFailedListener;
import com.google.android.gms.common.GooglePlayServicesUtil;
import com.google.android.gms.common.api.Api.a;
import com.google.android.gms.common.api.GoogleApiClient.ConnectionCallbacks;
import com.google.android.gms.common.api.GoogleApiClient.OnConnectionFailedListener;
import java.util.ArrayList;

public abstract class jl<T extends IInterface>
  implements Api.a, jm.b
{
  public static final String[] MP = { "service_esmobile", "service_googleme" };
  private final Looper JF;
  private final jm JS;
  private T MJ;
  private final ArrayList<jl<T>.b<?>> MK = new ArrayList();
  private jl<T>.f ML;
  private int MM = 1;
  private final String[] MN;
  boolean MO = false;
  private final Context mContext;
  private final Object mH = new Object();
  final Handler mHandler;
  
  protected jl(Context paramContext, Looper paramLooper, GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks, GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener, String... paramVarArgs)
  {
    mContext = ((Context)jx.i(paramContext));
    JF = ((Looper)jx.b(paramLooper, "Looper must not be null"));
    JS = new jm(paramContext, paramLooper, this);
    mHandler = new jl.a(this, paramLooper);
    c(paramVarArgs);
    MN = paramVarArgs;
    registerConnectionCallbacks((GoogleApiClient.ConnectionCallbacks)jx.i(paramConnectionCallbacks));
    registerConnectionFailedListener((GoogleApiClient.OnConnectionFailedListener)jx.i(paramOnConnectionFailedListener));
  }
  
  @Deprecated
  protected jl(Context paramContext, GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks, GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener, String... paramVarArgs)
  {
    this(paramContext, paramContext.getMainLooper(), new jl.c(paramConnectionCallbacks), new jl.g(paramOnConnectionFailedListener), paramVarArgs);
  }
  
  private void a(int paramInt, T paramT)
  {
    boolean bool = true;
    int i;
    int j;
    if (paramInt == 3)
    {
      i = 1;
      if (paramT == null) {
        break label62;
      }
      j = 1;
      label17:
      if (i != j) {
        break label68;
      }
    }
    for (;;)
    {
      jx.L(bool);
      synchronized (mH)
      {
        MM = paramInt;
        MJ = paramT;
        return;
      }
      i = 0;
      break;
      label62:
      j = 0;
      break label17;
      label68:
      bool = false;
    }
  }
  
  private boolean a(int paramInt1, int paramInt2, T paramT)
  {
    synchronized (mH)
    {
      if (MM != paramInt1) {
        return false;
      }
      a(paramInt2, paramT);
      return true;
    }
  }
  
  protected final void N(IBinder paramIBinder)
  {
    try
    {
      a(jt.a.Q(paramIBinder), new jl.e(this));
      return;
    }
    catch (DeadObjectException paramIBinder)
    {
      Log.w("GmsClient", "service died");
      aD(1);
      return;
    }
    catch (RemoteException paramIBinder)
    {
      Log.w("GmsClient", "Remote exception occurred", paramIBinder);
    }
  }
  
  protected void a(int paramInt, IBinder paramIBinder, Bundle paramBundle)
  {
    mHandler.sendMessage(mHandler.obtainMessage(1, new jl.h(this, paramInt, paramIBinder, paramBundle)));
  }
  
  @Deprecated
  public final void a(jl<T>.b<?> paramjl)
  {
    synchronized (MK)
    {
      MK.add(paramjl);
      mHandler.sendMessage(mHandler.obtainMessage(2, paramjl));
      return;
    }
  }
  
  protected abstract void a(jt paramjt, jl.e parame);
  
  public void aD(int paramInt)
  {
    mHandler.sendMessage(mHandler.obtainMessage(4, Integer.valueOf(paramInt)));
  }
  
  protected abstract String bK();
  
  protected abstract String bL();
  
  protected void c(String... paramVarArgs) {}
  
  public void connect()
  {
    MO = true;
    a(2, null);
    int i = GooglePlayServicesUtil.isGooglePlayServicesAvailable(mContext);
    if (i != 0)
    {
      a(1, null);
      mHandler.sendMessage(mHandler.obtainMessage(3, Integer.valueOf(i)));
    }
    do
    {
      return;
      if (ML != null)
      {
        Log.e("GmsClient", "Calling connect() while still connected, missing disconnect() for " + bK());
        jn.J(mContext).b(bK(), ML);
      }
      ML = new jl.f(this);
    } while (jn.J(mContext).a(bK(), ML));
    Log.e("GmsClient", "unable to connect to service: " + bK());
    mHandler.sendMessage(mHandler.obtainMessage(3, Integer.valueOf(9)));
  }
  
  protected final void dS()
  {
    if (!isConnected()) {
      throw new IllegalStateException("Not connected. Call connect() and wait for onConnected() to be called.");
    }
  }
  
  public void disconnect()
  {
    MO = false;
    synchronized (MK)
    {
      int j = MK.size();
      int i = 0;
      while (i < j)
      {
        ((jl.b)MK.get(i)).hz();
        i += 1;
      }
      MK.clear();
      a(1, null);
      if (ML != null)
      {
        jn.J(mContext).b(bK(), ML);
        ML = null;
      }
      return;
    }
  }
  
  public Bundle fX()
  {
    return null;
  }
  
  public boolean gN()
  {
    return MO;
  }
  
  public final Context getContext()
  {
    return mContext;
  }
  
  public final Looper getLooper()
  {
    return JF;
  }
  
  public final String[] hv()
  {
    return MN;
  }
  
  public final T hw()
  {
    synchronized (mH)
    {
      if (MM == 4) {
        throw new DeadObjectException();
      }
    }
    dS();
    if (MJ != null) {}
    for (boolean bool = true;; bool = false)
    {
      jx.a(bool, "Client is connected but service is null");
      IInterface localIInterface = MJ;
      return localIInterface;
    }
  }
  
  public boolean isConnected()
  {
    for (;;)
    {
      synchronized (mH)
      {
        if (MM == 3)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  public boolean isConnecting()
  {
    for (;;)
    {
      synchronized (mH)
      {
        if (MM == 2)
        {
          bool = true;
          return bool;
        }
      }
      boolean bool = false;
    }
  }
  
  @Deprecated
  public boolean isConnectionCallbacksRegistered(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    return JS.isConnectionCallbacksRegistered(new jl.c(paramConnectionCallbacks));
  }
  
  @Deprecated
  public boolean isConnectionFailedListenerRegistered(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    return JS.isConnectionFailedListenerRegistered(paramOnConnectionFailedListener);
  }
  
  protected abstract T l(IBinder paramIBinder);
  
  @Deprecated
  public void registerConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    JS.registerConnectionCallbacks(new jl.c(paramConnectionCallbacks));
  }
  
  public void registerConnectionCallbacks(GoogleApiClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    JS.registerConnectionCallbacks(paramConnectionCallbacks);
  }
  
  @Deprecated
  public void registerConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    JS.registerConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  public void registerConnectionFailedListener(GoogleApiClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    JS.registerConnectionFailedListener(paramOnConnectionFailedListener);
  }
  
  @Deprecated
  public void unregisterConnectionCallbacks(GooglePlayServicesClient.ConnectionCallbacks paramConnectionCallbacks)
  {
    JS.unregisterConnectionCallbacks(new jl.c(paramConnectionCallbacks));
  }
  
  @Deprecated
  public void unregisterConnectionFailedListener(GooglePlayServicesClient.OnConnectionFailedListener paramOnConnectionFailedListener)
  {
    JS.unregisterConnectionFailedListener(paramOnConnectionFailedListener);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */