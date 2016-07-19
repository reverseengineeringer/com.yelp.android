package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.VisibleRegion;
import com.yelp.android.bj.f;

public final class g
{
  private final f a;
  
  g(f paramf)
  {
    a = paramf;
  }
  
  public Point a(LatLng paramLatLng)
  {
    try
    {
      paramLatLng = (Point)d.a(a.a(paramLatLng));
      return paramLatLng;
    }
    catch (RemoteException paramLatLng)
    {
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
  
  public LatLng a(Point paramPoint)
  {
    try
    {
      paramPoint = a.a(d.a(paramPoint));
      return paramPoint;
    }
    catch (RemoteException paramPoint)
    {
      throw new RuntimeRemoteException(paramPoint);
    }
  }
  
  public VisibleRegion a()
  {
    try
    {
      VisibleRegion localVisibleRegion = a.a();
      return localVisibleRegion;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */