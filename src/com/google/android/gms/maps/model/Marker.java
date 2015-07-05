package com.google.android.gms.maps.model;

import android.os.RemoteException;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.model.internal.l;

public final class Marker
{
  private final l amo;
  
  public Marker(l paraml)
  {
    amo = ((l)jx.i(paraml));
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof Marker)) {
      return false;
    }
    try
    {
      boolean bool = amo.h(amo);
      return bool;
    }
    catch (RemoteException paramObject)
    {
      throw new RuntimeRemoteException((RemoteException)paramObject);
    }
  }
  
  public float getAlpha()
  {
    try
    {
      float f = amo.getAlpha();
      return f;
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
      String str = amo.getId();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public LatLng getPosition()
  {
    try
    {
      LatLng localLatLng = amo.getPosition();
      return localLatLng;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public float getRotation()
  {
    try
    {
      float f = amo.getRotation();
      return f;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public String getSnippet()
  {
    try
    {
      String str = amo.getSnippet();
      return str;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public String getTitle()
  {
    try
    {
      String str = amo.getTitle();
      return str;
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
      int i = amo.hashCodeRemote();
      return i;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void hideInfoWindow()
  {
    try
    {
      amo.hideInfoWindow();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isDraggable()
  {
    try
    {
      boolean bool = amo.isDraggable();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isFlat()
  {
    try
    {
      boolean bool = amo.isFlat();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isInfoWindowShown()
  {
    try
    {
      boolean bool = amo.isInfoWindowShown();
      return bool;
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
      boolean bool = amo.isVisible();
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
      amo.remove();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setAlpha(float paramFloat)
  {
    try
    {
      amo.setAlpha(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setAnchor(float paramFloat1, float paramFloat2)
  {
    try
    {
      amo.setAnchor(paramFloat1, paramFloat2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setDraggable(boolean paramBoolean)
  {
    try
    {
      amo.setDraggable(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setFlat(boolean paramBoolean)
  {
    try
    {
      amo.setFlat(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setIcon(BitmapDescriptor paramBitmapDescriptor)
  {
    try
    {
      amo.n(paramBitmapDescriptor.nA());
      return;
    }
    catch (RemoteException paramBitmapDescriptor)
    {
      throw new RuntimeRemoteException(paramBitmapDescriptor);
    }
  }
  
  public void setInfoWindowAnchor(float paramFloat1, float paramFloat2)
  {
    try
    {
      amo.setInfoWindowAnchor(paramFloat1, paramFloat2);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setPosition(LatLng paramLatLng)
  {
    try
    {
      amo.setPosition(paramLatLng);
      return;
    }
    catch (RemoteException paramLatLng)
    {
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
  
  public void setRotation(float paramFloat)
  {
    try
    {
      amo.setRotation(paramFloat);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setSnippet(String paramString)
  {
    try
    {
      amo.setSnippet(paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      throw new RuntimeRemoteException(paramString);
    }
  }
  
  public void setTitle(String paramString)
  {
    try
    {
      amo.setTitle(paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      throw new RuntimeRemoteException(paramString);
    }
  }
  
  public void setVisible(boolean paramBoolean)
  {
    try
    {
      amo.setVisible(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void showInfoWindow()
  {
    try
    {
      amo.showInfoWindow();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.Marker
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */