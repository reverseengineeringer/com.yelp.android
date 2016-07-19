package com.google.android.gms.location.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.RemoteException;
import android.util.Log;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.location.LocationAvailability;
import com.google.android.gms.location.LocationRequest;
import com.google.android.gms.location.LocationResult;
import com.google.android.gms.location.j;
import com.google.android.gms.location.q;
import com.google.android.gms.location.q.a;
import com.google.android.gms.location.r;
import com.google.android.gms.location.r.a;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

public class k
{
  private final p<i> a;
  private final Context b;
  private ContentProviderClient c = null;
  private boolean d = false;
  private Map<j, c> e = new HashMap();
  private Map<Object, a> f = new HashMap();
  
  public k(Context paramContext, p<i> paramp)
  {
    b = paramContext;
    a = paramp;
  }
  
  private c a(j paramj, Looper paramLooper)
  {
    synchronized (e)
    {
      c localc2 = (c)e.get(paramj);
      c localc1 = localc2;
      if (localc2 == null) {
        localc1 = new c(paramj, paramLooper);
      }
      e.put(paramj, localc1);
      return localc1;
    }
  }
  
  public Location a()
  {
    a.a();
    try
    {
      Location localLocation = ((i)a.c()).b(b.getPackageName());
      return localLocation;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public void a(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent, g paramg)
    throws RemoteException
  {
    a.a();
    ((i)a.c()).a(LocationRequestUpdateData.a(LocationRequestInternal.a(paramLocationRequest), paramPendingIntent, paramg));
  }
  
  public void a(LocationRequest paramLocationRequest, j paramj, Looper paramLooper, g paramg)
    throws RemoteException
  {
    a.a();
    paramj = a(paramj, paramLooper);
    ((i)a.c()).a(LocationRequestUpdateData.a(LocationRequestInternal.a(paramLocationRequest), paramj, paramg));
  }
  
  public void a(j paramj, g paramg)
    throws RemoteException
  {
    a.a();
    zzx.zzb(paramj, "Invalid null listener");
    synchronized (e)
    {
      paramj = (c)e.remove(paramj);
      if ((c != null) && (e.isEmpty()))
      {
        c.release();
        c = null;
      }
      if (paramj != null)
      {
        paramj.a();
        ((i)a.c()).a(LocationRequestUpdateData.a(paramj, paramg));
      }
      return;
    }
  }
  
  public void a(boolean paramBoolean)
    throws RemoteException
  {
    a.a();
    ((i)a.c()).a(paramBoolean);
    d = paramBoolean;
  }
  
  public void b()
  {
    Object localObject3;
    try
    {
      synchronized (e)
      {
        Iterator localIterator1 = e.values().iterator();
        while (localIterator1.hasNext())
        {
          localObject3 = (c)localIterator1.next();
          if (localObject3 != null) {
            ((i)a.c()).a(LocationRequestUpdateData.a((r)localObject3, null));
          }
        }
      }
      e.clear();
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
    synchronized (f)
    {
      Iterator localIterator2 = f.values().iterator();
      while (localIterator2.hasNext())
      {
        localObject3 = (a)localIterator2.next();
        if (localObject3 != null) {
          ((i)a.c()).a(LocationRequestUpdateData.a((q)localObject3, null));
        }
      }
    }
    f.clear();
  }
  
  public void c()
  {
    if (d) {}
    try
    {
      a(false);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  private static class a
    extends q.a
  {
    private Handler a;
    
    private void a(int paramInt, Object paramObject)
    {
      if (a == null)
      {
        Log.e("LocationClientHelper", "Received a data in client after calling removeLocationUpdates.");
        return;
      }
      Message localMessage = Message.obtain();
      what = paramInt;
      obj = paramObject;
      a.sendMessage(localMessage);
    }
    
    public void a(LocationAvailability paramLocationAvailability)
    {
      a(1, paramLocationAvailability);
    }
    
    public void a(LocationResult paramLocationResult)
    {
      a(0, paramLocationResult);
    }
  }
  
  private static class b
    extends Handler
  {
    private final j a;
    
    public b(j paramj)
    {
      a = paramj;
    }
    
    public b(j paramj, Looper paramLooper)
    {
      super();
      a = paramj;
    }
    
    public void handleMessage(Message paramMessage)
    {
      switch (what)
      {
      default: 
        Log.e("LocationClientHelper", "unknown message in LocationHandler.handleMessage");
        return;
      }
      paramMessage = new Location((Location)obj);
      a.a(paramMessage);
    }
  }
  
  private static class c
    extends r.a
  {
    private Handler a;
    
    c(j paramj, Looper paramLooper)
    {
      boolean bool;
      if (paramLooper == null)
      {
        if (Looper.myLooper() != null)
        {
          bool = true;
          zzx.zza(bool, "Can't create handler inside thread that has not called Looper.prepare()");
        }
      }
      else {
        if (paramLooper != null) {
          break label46;
        }
      }
      label46:
      for (paramj = new k.b(paramj);; paramj = new k.b(paramj, paramLooper))
      {
        a = paramj;
        return;
        bool = false;
        break;
      }
    }
    
    public void a()
    {
      a = null;
    }
    
    public void a(Location paramLocation)
    {
      if (a == null)
      {
        Log.e("LocationClientHelper", "Received a location in client after calling removeLocationUpdates.");
        return;
      }
      Message localMessage = Message.obtain();
      what = 1;
      obj = paramLocation;
      a.sendMessage(localMessage);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */