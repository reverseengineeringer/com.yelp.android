package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.model.internal.h;

public final class Circle
{
  private final h alR;
  
  public Circle(h paramh)
  {
    alR = ((h)jx.i(paramh));
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Circle)) {
      return false;
    }
    try
    {
      boolean bool = alR.a(alR);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      throw new RuntimeRemoteException((RemoteException)paramObject);
    }
  }
  
  public LatLng getCenter()
  {
    try
    {
      LatLng localLatLng = alR.getCenter();
      return localLatLng;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public int getFillColor()
  {
    try
    {
      int i = alR.getFillColor();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public String getId()
  {
    try
    {
      String str = alR.getId();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public double getRadius()
  {
    try
    {
      double d = alR.getRadius();
      return d;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public int getStrokeColor()
  {
    try
    {
      int i = alR.getStrokeColor();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public float getStrokeWidth()
  {
    try
    {
      float f = alR.getStrokeWidth();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public float getZIndex()
  {
    try
    {
      float f = alR.getZIndex();
      return f;
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
      int i = alR.hashCodeRemote();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isVisible()
  {
    try
    {
      boolean bool = alR.isVisible();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void remove()
  {
    try
    {
      alR.remove();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setCenter(LatLng paramLatLng)
  {
    try
    {
      alR.setCenter(paramLatLng);
      return;
    }
    catch (RemoteException paramLatLng)
    {
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
  
  public void setFillColor(int paramInt)
  {
    try
    {
      alR.setFillColor(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setRadius(double paramDouble)
  {
    try
    {
      alR.setRadius(paramDouble);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setStrokeColor(int paramInt)
  {
    try
    {
      alR.setStrokeColor(paramInt);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setStrokeWidth(float paramFloat)
  {
    try
    {
      alR.setStrokeWidth(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setVisible(boolean paramBoolean)
  {
    try
    {
      alR.setVisible(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setZIndex(float paramFloat)
  {
    try
    {
      alR.setZIndex(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.Circle
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */