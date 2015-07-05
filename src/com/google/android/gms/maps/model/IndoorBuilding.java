package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.model.internal.j;
import com.google.android.gms.maps.model.internal.k.a;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class IndoorBuilding
{
  private final j ami;
  
  public IndoorBuilding(j paramj)
  {
    ami = ((j)jx.i(paramj));
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof IndoorBuilding)) {
      return false;
    }
    try
    {
      boolean bool = ami.b(ami);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      throw new RuntimeRemoteException((RemoteException)paramObject);
    }
  }
  
  public int getActiveLevelIndex()
  {
    try
    {
      int i = ami.getActiveLevelIndex();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public int getDefaultLevelIndex()
  {
    try
    {
      int i = ami.getActiveLevelIndex();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public List<IndoorLevel> getLevels()
  {
    try
    {
      Object localObject = ami.getLevels();
      ArrayList localArrayList = new ArrayList(((List)localObject).size());
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        localArrayList.add(new IndoorLevel(k.a.bz((IBinder)((Iterator)localObject).next())));
      }
      return localRemoteException;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public int hashCode()
  {
    try
    {
      int i = ami.hashCodeRemote();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isUnderground()
  {
    try
    {
      boolean bool = ami.isUnderground();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.IndoorBuilding
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */