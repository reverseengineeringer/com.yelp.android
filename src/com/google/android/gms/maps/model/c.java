package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.common.internal.zzx;
import com.yelp.android.bk.f;

public final class c
{
  private final f a;
  
  public c(f paramf)
  {
    a = ((f)zzx.zzz(paramf));
  }
  
  public String a()
  {
    try
    {
      String str = a.b();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void a(float paramFloat)
  {
    try
    {
      a.b(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void a(float paramFloat1, float paramFloat2)
  {
    try
    {
      a.b(paramFloat1, paramFloat2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public LatLng b()
  {
    try
    {
      LatLng localLatLng = a.c();
      return localLatLng;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void c()
  {
    try
    {
      a.g();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean d()
  {
    try
    {
      boolean bool = a.i();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof c)) {
      return false;
    }
    try
    {
      boolean bool = a.a(a);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      throw new RuntimeRemoteException((RemoteException)paramObject);
    }
  }
  
  public int hashCode()
  {
    try
    {
      int i = a.k();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */