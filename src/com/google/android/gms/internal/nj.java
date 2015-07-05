package com.google.android.gms.internal;

import android.app.PendingIntent;
import android.content.ContentProviderClient;
import android.content.Context;
import android.location.Location;
import android.os.Looper;
import android.os.RemoteException;
import com.google.android.gms.location.LocationListener;
import com.google.android.gms.location.LocationRequest;
import java.util.Collection;
import java.util.HashMap;
import java.util.Iterator;

public class nj
{
  private final np<ni> Ee;
  private ContentProviderClient agS = null;
  private boolean agT = false;
  private HashMap<LocationListener, nj.b> agU = new HashMap();
  private final Context mContext;
  
  public nj(Context paramContext, np<ni> paramnp)
  {
    mContext = paramContext;
    Ee = paramnp;
  }
  
  private nj.b a(LocationListener paramLocationListener, Looper paramLooper)
  {
    if (paramLooper == null) {
      jx.b(Looper.myLooper(), "Can't create handler inside thread that has not called Looper.prepare()");
    }
    synchronized (agU)
    {
      nj.b localb2 = (nj.b)agU.get(paramLocationListener);
      nj.b localb1 = localb2;
      if (localb2 == null) {
        localb1 = new nj.b(paramLocationListener, paramLooper);
      }
      agU.put(paramLocationListener, localb1);
      return localb1;
    }
  }
  
  public void S(boolean paramBoolean)
  {
    Ee.dS();
    ((ni)Ee.hw()).S(paramBoolean);
    agT = paramBoolean;
  }
  
  public void a(LocationListener paramLocationListener)
  {
    Ee.dS();
    jx.b(paramLocationListener, "Invalid null listener");
    synchronized (agU)
    {
      paramLocationListener = (nj.b)agU.remove(paramLocationListener);
      if ((agS != null) && (agU.isEmpty()))
      {
        agS.release();
        agS = null;
      }
      if (paramLocationListener != null)
      {
        paramLocationListener.release();
        ((ni)Ee.hw()).a(paramLocationListener);
      }
      return;
    }
  }
  
  public void a(LocationRequest paramLocationRequest, LocationListener paramLocationListener, Looper paramLooper)
  {
    Ee.dS();
    paramLocationListener = a(paramLocationListener, paramLooper);
    ((ni)Ee.hw()).a(paramLocationRequest, paramLocationListener);
  }
  
  public void b(Location paramLocation)
  {
    Ee.dS();
    ((ni)Ee.hw()).b(paramLocation);
  }
  
  public void b(LocationRequest paramLocationRequest, PendingIntent paramPendingIntent)
  {
    Ee.dS();
    ((ni)Ee.hw()).a(paramLocationRequest, paramPendingIntent);
  }
  
  public void c(PendingIntent paramPendingIntent)
  {
    Ee.dS();
    ((ni)Ee.hw()).b(paramPendingIntent);
  }
  
  public Location nl()
  {
    Ee.dS();
    try
    {
      Location localLocation = ((ni)Ee.hw()).bZ(mContext.getPackageName());
      return localLocation;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public void nm()
  {
    if (agT) {}
    try
    {
      S(false);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
  
  public void removeAllListeners()
  {
    try
    {
      synchronized (agU)
      {
        Iterator localIterator = agU.values().iterator();
        while (localIterator.hasNext())
        {
          nj.b localb = (nj.b)localIterator.next();
          if (localb != null) {
            ((ni)Ee.hw()).a(localb);
          }
        }
      }
      agU.clear();
    }
    catch (RemoteException localRemoteException)
    {
      throw new IllegalStateException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */