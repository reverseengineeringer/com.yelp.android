package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.RemoteException;
import android.util.Log;
import java.util.ArrayList;
import java.util.Iterator;

public class ox
  extends jl<oq>
{
  private final String CS;
  private final ou anm;
  private final os ann;
  private boolean ano;
  private final Object mH;
  
  public ox(Context paramContext, ou paramou)
  {
    super(paramContext, paramou, paramou, new String[0]);
    CS = paramContext.getPackageName();
    anm = ((ou)jx.i(paramou));
    anm.a(this);
    ann = new os();
    mH = new Object();
    ano = true;
  }
  
  private void c(ov paramov, or paramor)
  {
    ann.a(paramov, paramor);
  }
  
  private void d(ov paramov, or paramor)
  {
    try
    {
      or();
      ((oq)hw()).a(CS, paramov, paramor);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("PlayLoggerImpl", "Couldn't send log event.  Will try caching.");
      c(paramov, paramor);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e("PlayLoggerImpl", "Service was disconnected.  Will try caching.");
      c(paramov, paramor);
    }
  }
  
  private void or()
  {
    boolean bool;
    if (!ano)
    {
      bool = true;
      je.K(bool);
      if (!ann.isEmpty()) {
        Object localObject = null;
      }
    }
    label122:
    label195:
    label228:
    for (;;)
    {
      ArrayList localArrayList;
      os.a locala;
      try
      {
        localArrayList = new ArrayList();
        Iterator localIterator = ann.op().iterator();
        if (!localIterator.hasNext()) {
          break label195;
        }
        locala = (os.a)localIterator.next();
        if (and == null) {
          break label122;
        }
        ((oq)hw()).a(CS, anb, qw.f(and));
        continue;
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("PlayLoggerImpl", "Couldn't send cached log events to AndroidLog service.  Retaining in memory cache.");
      }
      bool = false;
      break;
      if (anb.equals(localRemoteException))
      {
        localArrayList.add(anc);
      }
      else
      {
        if (!localArrayList.isEmpty())
        {
          ((oq)hw()).a(CS, localRemoteException, localArrayList);
          localArrayList.clear();
        }
        ov localov = anb;
        localArrayList.add(anc);
        break label228;
        if (!localArrayList.isEmpty()) {
          ((oq)hw()).a(CS, localov, localArrayList);
        }
        ann.clear();
        return;
      }
    }
  }
  
  void U(boolean paramBoolean)
  {
    synchronized (mH)
    {
      boolean bool = ano;
      ano = paramBoolean;
      if ((bool) && (!ano)) {
        or();
      }
      return;
    }
  }
  
  protected void a(jt paramjt, jl.e parame)
  {
    Bundle localBundle = new Bundle();
    paramjt.f(parame, 6587000, getContext().getPackageName(), localBundle);
  }
  
  public void b(ov paramov, or paramor)
  {
    synchronized (mH)
    {
      if (ano)
      {
        c(paramov, paramor);
        return;
      }
      d(paramov, paramor);
    }
  }
  
  protected oq bJ(IBinder paramIBinder)
  {
    return oq.a.bI(paramIBinder);
  }
  
  protected String bK()
  {
    return "com.google.android.gms.playlog.service.START";
  }
  
  protected String bL()
  {
    return "com.google.android.gms.playlog.internal.IPlayLogService";
  }
  
  public void start()
  {
    synchronized (mH)
    {
      if ((isConnecting()) || (isConnected())) {
        return;
      }
      anm.T(true);
      connect();
      return;
    }
  }
  
  public void stop()
  {
    synchronized (mH)
    {
      anm.T(false);
      disconnect();
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ox
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */