package com.google.android.gms.maps;

import android.os.RemoteException;
import com.google.android.gms.maps.internal.IUiSettingsDelegate;
import com.google.android.gms.maps.model.RuntimeRemoteException;

public final class UiSettings
{
  private final IUiSettingsDelegate alH;
  
  UiSettings(IUiSettingsDelegate paramIUiSettingsDelegate)
  {
    alH = paramIUiSettingsDelegate;
  }
  
  public boolean isCompassEnabled()
  {
    try
    {
      boolean bool = alH.isCompassEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isIndoorLevelPickerEnabled()
  {
    try
    {
      boolean bool = alH.isIndoorLevelPickerEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isMapToolbarEnabled()
  {
    try
    {
      boolean bool = alH.isMapToolbarEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isMyLocationButtonEnabled()
  {
    try
    {
      boolean bool = alH.isMyLocationButtonEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isRotateGesturesEnabled()
  {
    try
    {
      boolean bool = alH.isRotateGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isScrollGesturesEnabled()
  {
    try
    {
      boolean bool = alH.isScrollGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isTiltGesturesEnabled()
  {
    try
    {
      boolean bool = alH.isTiltGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isZoomControlsEnabled()
  {
    try
    {
      boolean bool = alH.isZoomControlsEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isZoomGesturesEnabled()
  {
    try
    {
      boolean bool = alH.isZoomGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setAllGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      alH.setAllGesturesEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setCompassEnabled(boolean paramBoolean)
  {
    try
    {
      alH.setCompassEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setIndoorLevelPickerEnabled(boolean paramBoolean)
  {
    try
    {
      alH.setIndoorLevelPickerEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setMapToolbarEnabled(boolean paramBoolean)
  {
    try
    {
      alH.setMapToolbarEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setMyLocationButtonEnabled(boolean paramBoolean)
  {
    try
    {
      alH.setMyLocationButtonEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setRotateGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      alH.setRotateGesturesEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setScrollGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      alH.setScrollGesturesEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setTiltGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      alH.setTiltGesturesEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setZoomControlsEnabled(boolean paramBoolean)
  {
    try
    {
      alH.setZoomControlsEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setZoomGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      alH.setZoomGesturesEnabled(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.UiSettings
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */