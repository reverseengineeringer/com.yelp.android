package com.google.android.gms.playlog.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzb;
import com.google.android.gms.common.internal.zzf;
import com.google.android.gms.common.internal.zzj;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.lq;
import java.util.ArrayList;
import java.util.Iterator;

public class f
  extends zzj<a>
{
  private final String a;
  private final d b;
  private final b c;
  private final Object d;
  private boolean e;
  
  public f(Context paramContext, Looper paramLooper, d paramd, zzf paramzzf)
  {
    super(paramContext, paramLooper, 24, paramzzf, paramd, paramd);
    a = paramContext.getPackageName();
    b = ((d)zzx.zzz(paramd));
    b.a(this);
    c = new b();
    d = new Object();
    e = true;
  }
  
  private void b(PlayLoggerContext paramPlayLoggerContext, LogEvent paramLogEvent)
  {
    c.a(paramPlayLoggerContext, paramLogEvent);
  }
  
  private void c()
  {
    boolean bool;
    if (!e)
    {
      bool = true;
      zzb.zzab(bool);
      if (!c.e()) {
        Object localObject = null;
      }
    }
    label122:
    label195:
    label228:
    for (;;)
    {
      ArrayList localArrayList;
      b.a locala;
      try
      {
        localArrayList = new ArrayList();
        Iterator localIterator = c.a().iterator();
        if (!localIterator.hasNext()) {
          break label195;
        }
        locala = (b.a)localIterator.next();
        if (c == null) {
          break label122;
        }
        ((a)zzqJ()).a(a, a, lq.a(c));
        continue;
        return;
      }
      catch (RemoteException localRemoteException)
      {
        Log.e("PlayLoggerImpl", "Couldn't send cached log events to AndroidLog service.  Retaining in memory cache.");
      }
      bool = false;
      break;
      if (a.equals(localRemoteException))
      {
        localArrayList.add(b);
      }
      else
      {
        if (!localArrayList.isEmpty())
        {
          ((a)zzqJ()).a(a, localRemoteException, localArrayList);
          localArrayList.clear();
        }
        PlayLoggerContext localPlayLoggerContext = a;
        localArrayList.add(b);
        break label228;
        if (!localArrayList.isEmpty()) {
          ((a)zzqJ()).a(a, localPlayLoggerContext, localArrayList);
        }
        c.b();
        return;
      }
    }
  }
  
  private void c(PlayLoggerContext paramPlayLoggerContext, LogEvent paramLogEvent)
  {
    try
    {
      c();
      ((a)zzqJ()).a(a, paramPlayLoggerContext, paramLogEvent);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      Log.e("PlayLoggerImpl", "Couldn't send log event.  Will try caching.");
      b(paramPlayLoggerContext, paramLogEvent);
      return;
    }
    catch (IllegalStateException localIllegalStateException)
    {
      Log.e("PlayLoggerImpl", "Service was disconnected.  Will try caching.");
      b(paramPlayLoggerContext, paramLogEvent);
    }
  }
  
  protected a a(IBinder paramIBinder)
  {
    return a.a.a(paramIBinder);
  }
  
  public void a()
  {
    synchronized (d)
    {
      if ((isConnecting()) || (isConnected())) {
        return;
      }
      b.a(true);
      zzqG();
      return;
    }
  }
  
  public void a(PlayLoggerContext paramPlayLoggerContext, LogEvent paramLogEvent)
  {
    synchronized (d)
    {
      if (e)
      {
        b(paramPlayLoggerContext, paramLogEvent);
        return;
      }
      c(paramPlayLoggerContext, paramLogEvent);
    }
  }
  
  void a(boolean paramBoolean)
  {
    synchronized (d)
    {
      boolean bool = e;
      e = paramBoolean;
      if ((bool) && (!e)) {
        c();
      }
      return;
    }
  }
  
  public void b()
  {
    synchronized (d)
    {
      b.a(false);
      disconnect();
      return;
    }
  }
  
  protected String zzgu()
  {
    return "com.google.android.gms.playlog.service.START";
  }
  
  protected String zzgv()
  {
    return "com.google.android.gms.playlog.internal.IPlayLogService";
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.playlog.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */