package com.google.android.gms.maps;

import android.graphics.Point;
import android.os.RemoteException;
import com.google.android.gms.dynamic.e;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.RuntimeRemoteException;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public class StreetViewPanorama
{
  private final IStreetViewPanoramaDelegate alg;
  
  protected StreetViewPanorama(IStreetViewPanoramaDelegate paramIStreetViewPanoramaDelegate)
  {
    alg = ((IStreetViewPanoramaDelegate)jx.i(paramIStreetViewPanoramaDelegate));
  }
  
  public void animateTo(StreetViewPanoramaCamera paramStreetViewPanoramaCamera, long paramLong)
  {
    try
    {
      alg.animateTo(paramStreetViewPanoramaCamera, paramLong);
      return;
    }
    catch (RemoteException paramStreetViewPanoramaCamera)
    {
      throw new RuntimeRemoteException(paramStreetViewPanoramaCamera);
    }
  }
  
  public StreetViewPanoramaLocation getLocation()
  {
    try
    {
      StreetViewPanoramaLocation localStreetViewPanoramaLocation = alg.getStreetViewPanoramaLocation();
      return localStreetViewPanoramaLocation;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public StreetViewPanoramaCamera getPanoramaCamera()
  {
    try
    {
      StreetViewPanoramaCamera localStreetViewPanoramaCamera = alg.getPanoramaCamera();
      return localStreetViewPanoramaCamera;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isPanningGesturesEnabled()
  {
    try
    {
      boolean bool = alg.isPanningGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isStreetNamesEnabled()
  {
    try
    {
      boolean bool = alg.isStreetNamesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public boolean isUserNavigationEnabled()
  {
    try
    {
      boolean bool = alg.isUserNavigationEnabled();
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
      boolean bool = alg.isZoomGesturesEnabled();
      return bool;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  IStreetViewPanoramaDelegate nQ()
  {
    return alg;
  }
  
  public Point orientationToPoint(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation)
  {
    try
    {
      paramStreetViewPanoramaOrientation = alg.orientationToPoint(paramStreetViewPanoramaOrientation);
      if (paramStreetViewPanoramaOrientation == null) {
        return null;
      }
      paramStreetViewPanoramaOrientation = (Point)e.f(paramStreetViewPanoramaOrientation);
      return paramStreetViewPanoramaOrientation;
    }
    catch (RemoteException paramStreetViewPanoramaOrientation)
    {
      throw new RuntimeRemoteException(paramStreetViewPanoramaOrientation);
    }
  }
  
  public StreetViewPanoramaOrientation pointToOrientation(Point paramPoint)
  {
    try
    {
      paramPoint = alg.pointToOrientation(e.k(paramPoint));
      return paramPoint;
    }
    catch (RemoteException paramPoint)
    {
      throw new RuntimeRemoteException(paramPoint);
    }
  }
  
  public final void setOnStreetViewPanoramaCameraChangeListener(StreetViewPanorama.OnStreetViewPanoramaCameraChangeListener paramOnStreetViewPanoramaCameraChangeListener)
  {
    if (paramOnStreetViewPanoramaCameraChangeListener == null) {}
    try
    {
      alg.setOnStreetViewPanoramaCameraChangeListener(null);
      return;
    }
    catch (RemoteException paramOnStreetViewPanoramaCameraChangeListener)
    {
      throw new RuntimeRemoteException(paramOnStreetViewPanoramaCameraChangeListener);
    }
    alg.setOnStreetViewPanoramaCameraChangeListener(new StreetViewPanorama.2(this, paramOnStreetViewPanoramaCameraChangeListener));
  }
  
  public final void setOnStreetViewPanoramaChangeListener(StreetViewPanorama.OnStreetViewPanoramaChangeListener paramOnStreetViewPanoramaChangeListener)
  {
    if (paramOnStreetViewPanoramaChangeListener == null) {}
    try
    {
      alg.setOnStreetViewPanoramaChangeListener(null);
      return;
    }
    catch (RemoteException paramOnStreetViewPanoramaChangeListener)
    {
      throw new RuntimeRemoteException(paramOnStreetViewPanoramaChangeListener);
    }
    alg.setOnStreetViewPanoramaChangeListener(new StreetViewPanorama.1(this, paramOnStreetViewPanoramaChangeListener));
  }
  
  public final void setOnStreetViewPanoramaClickListener(StreetViewPanorama.OnStreetViewPanoramaClickListener paramOnStreetViewPanoramaClickListener)
  {
    if (paramOnStreetViewPanoramaClickListener == null) {}
    try
    {
      alg.setOnStreetViewPanoramaClickListener(null);
      return;
    }
    catch (RemoteException paramOnStreetViewPanoramaClickListener)
    {
      throw new RuntimeRemoteException(paramOnStreetViewPanoramaClickListener);
    }
    alg.setOnStreetViewPanoramaClickListener(new StreetViewPanorama.3(this, paramOnStreetViewPanoramaClickListener));
  }
  
  public void setPanningGesturesEnabled(boolean paramBoolean)
  {
    try
    {
      alg.enablePanning(paramBoolean);
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
      alg.setPosition(paramLatLng);
      return;
    }
    catch (RemoteException paramLatLng)
    {
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
  
  public void setPosition(LatLng paramLatLng, int paramInt)
  {
    try
    {
      alg.setPositionWithRadius(paramLatLng, paramInt);
      return;
    }
    catch (RemoteException paramLatLng)
    {
      throw new RuntimeRemoteException(paramLatLng);
    }
  }
  
  public void setPosition(String paramString)
  {
    try
    {
      alg.setPositionWithID(paramString);
      return;
    }
    catch (RemoteException paramString)
    {
      throw new RuntimeRemoteException(paramString);
    }
  }
  
  public void setStreetNamesEnabled(boolean paramBoolean)
  {
    try
    {
      alg.enableStreetNames(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
  
  public void setUserNavigationEnabled(boolean paramBoolean)
  {
    try
    {
      alg.enableUserNavigation(paramBoolean);
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
      alg.enableZoom(paramBoolean);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      throw new RuntimeRemoteException(localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanorama
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */