package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.formats.a.a;
import com.google.android.gms.ads.formats.d;
import com.google.android.gms.ads.internal.util.client.b;
import com.google.android.gms.dynamic.c;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

@fv
public class bk
  extends d
{
  private final bj a;
  private final List<a.a> b = new ArrayList();
  private final be c;
  
  public bk(bj parambj)
  {
    a = parambj;
    try
    {
      parambj = a.b();
      if (parambj != null)
      {
        parambj = parambj.iterator();
        while (parambj.hasNext())
        {
          bd localbd = a(parambj.next());
          if (localbd != null) {
            b.add(new be(localbd));
          }
        }
      }
      try
      {
        parambj = a.d();
        if (parambj == null) {
          break label129;
        }
        parambj = new be(parambj);
      }
      catch (RemoteException parambj)
      {
        for (;;)
        {
          b.b("Failed to get icon.", parambj);
          parambj = null;
        }
      }
    }
    catch (RemoteException parambj)
    {
      b.b("Failed to get image.", parambj);
    }
    c = parambj;
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
  
  public CharSequence g()
  {
    try
    {
      String str = a.f();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      b.b("Failed to get attribution.", localRemoteException);
    }
    return null;
  }
  
  protected c h()
  {
    try
    {
      c localc = a.g();
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
 * Qualified Name:     com.google.android.gms.internal.bk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */