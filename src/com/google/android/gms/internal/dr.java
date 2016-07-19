package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.ads.mediation.AdUrlAdapter;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.ads.mediation.c;
import com.google.ads.mediation.h;
import com.google.android.gms.ads.mediation.customevent.a;
import com.google.android.gms.ads.mediation.customevent.d;
import com.yelp.android.bc.m;
import java.util.Map;

@fv
public final class dr
  extends ds.a
{
  private Map<Class<? extends m>, m> a;
  
  private <NETWORK_EXTRAS extends h, SERVER_PARAMETERS extends MediationServerParameters> dt c(String paramString)
    throws RemoteException
  {
    try
    {
      Object localObject = Class.forName(paramString, false, dr.class.getClassLoader());
      if (c.class.isAssignableFrom((Class)localObject))
      {
        localObject = (c)((Class)localObject).newInstance();
        return new ef((c)localObject, (h)a.get(((c)localObject).b()));
      }
      if (com.yelp.android.bc.b.class.isAssignableFrom((Class)localObject)) {
        return new ea((com.yelp.android.bc.b)((Class)localObject).newInstance());
      }
      com.google.android.gms.ads.internal.util.client.b.d("Could not instantiate mediation adapter: " + paramString + " (not a valid adapter).");
      throw new RemoteException();
    }
    catch (Throwable localThrowable) {}
    return d(paramString);
  }
  
  private dt d(String paramString)
    throws RemoteException
  {
    do
    {
      try
      {
        com.google.android.gms.ads.internal.util.client.b.a("Reflection failed, retrying using direct instantiation");
        if ("com.google.ads.mediation.admob.AdMobAdapter".equals(paramString)) {
          return new ea(new AdMobAdapter());
        }
        if ("com.google.ads.mediation.AdUrlAdapter".equals(paramString))
        {
          ea localea = new ea(new AdUrlAdapter());
          return localea;
        }
      }
      catch (Throwable localThrowable)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Could not instantiate mediation adapter: " + paramString + ". ", localThrowable);
        throw new RemoteException();
      }
      if ("com.google.android.gms.ads.mediation.customevent.CustomEventAdapter".equals(paramString)) {
        return new ea(new com.google.android.gms.ads.mediation.customevent.CustomEventAdapter());
      }
    } while (!"com.google.ads.mediation.customevent.CustomEventAdapter".equals(paramString));
    Object localObject = new com.google.ads.mediation.customevent.CustomEventAdapter();
    localObject = new ef((c)localObject, (d)a.get(((com.google.ads.mediation.customevent.CustomEventAdapter)localObject).b()));
    return (dt)localObject;
  }
  
  public dt a(String paramString)
    throws RemoteException
  {
    return c(paramString);
  }
  
  public void a(Map<Class<? extends m>, m> paramMap)
  {
    a = paramMap;
  }
  
  public boolean b(String paramString)
    throws RemoteException
  {
    try
    {
      boolean bool = a.class.isAssignableFrom(Class.forName(paramString, false, dr.class.getClassLoader()));
      return bool;
    }
    catch (Throwable localThrowable)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Could not load custom event implementation class: " + paramString + ", assuming old implementation.");
    }
    return false;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */