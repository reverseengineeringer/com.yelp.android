package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.yelp.android.bj.j;

public final class i
{
  private final j a;
  
  i(j paramj)
  {
    a = paramj;
  }
  
  public void a(boolean paramBoolean)
  {
    try
    {
      a.c(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void b(boolean paramBoolean)
  {
    try
    {
      a.h(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */