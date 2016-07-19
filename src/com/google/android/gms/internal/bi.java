package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.a.a;
import com.google.android.gms.ads.internal.util.client.b;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@fv
public class bi
  extends com.google.android.gms.ads.formats.c
{
  private final bh a;
  private final List<a.a> b = new ArrayList();
  private final be c;
  
  public bi(bh parambh)
  {
    a = parambh;
    try
    {
      parambh = a.b();
      if (parambh != null)
      {
        parambh = parambh.iterator();
        while (parambh.hasNext())
        {
          bd localbd = a(parambh.next());
          if (localbd != null) {
            b.add(new be(localbd));
          }
        }
      }
      try
      {
        parambh = a.d();
        if (parambh == null) {
          break label129;
        }
        parambh = new be(parambh);
      }
      catch (RemoteException parambh)
      {
        for (;;)
        {
          b.b("Failed to get icon.", parambh);
          parambh = null;
        }
      }
    }
    catch (RemoteException parambh)
    {
      b.b("Failed to get image.", parambh);
    }
    c = parambh;
  }
  
  bd a(Object paramObject)
  {
    if ((paramObject instanceof IBinder)) {
      return bd.a.a((IBinder)paramObject);
    }
    return null;
  }
  
  public CharSequence b()
  {
    try
    {
      String str = a.a();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      b.b("Failed to get headline.", localRemoteException);
    }
    return null;
  }
  
  public List<a.a> c()
  {
    return b;
  }
  
  public CharSequence d()
  {
    try
    {
      String str = a.c();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      b.b("Failed to get body.", localRemoteException);
    }
    return null;
  }
  
  public a.a e()
  {
    return c;
  }
  
  public CharSequence f()
  {
    try
    {
      String str = a.e();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      b.b("Failed to get call to action.", localRemoteException);
    }
    return null;
  }
  
  public Double g()
  {
    try
    {
      double d = a.f();
      if (d == -1.0D) {
        return null;
      }
      return Double.valueOf(d);
    }
    catch (RemoteException localRemoteException)
    {
      b.b("Failed to get star rating.", localRemoteException);
    }
    return null;
  }
  
  public CharSequence h()
  {
    try
    {
      String str = a.g();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      b.b("Failed to get store", localRemoteException);
    }
    return null;
  }
  
  public CharSequence i()
  {
    try
    {
      String str = a.h();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      b.b("Failed to get price.", localRemoteException);
    }
    return null;
  }
  
  protected com.google.android.gms.dynamic.c j()
  {
    try
    {
      com.google.android.gms.dynamic.c localc = a.i();
      return localc;
    }
    catch (RemoteException localRemoteException)
    {
      b.b("Failed to retrieve native ad engine.", localRemoteException);
    }
    return null;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.bi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */