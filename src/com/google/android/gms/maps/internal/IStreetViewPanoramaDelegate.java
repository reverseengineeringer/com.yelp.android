package com.google.android.gms.maps.internal;

import android.os.IInterface;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.google.android.gms.maps.model.StreetViewPanoramaLocation;
import com.google.android.gms.maps.model.StreetViewPanoramaOrientation;

public abstract interface IStreetViewPanoramaDelegate
  extends IInterface
{
  public abstract void animateTo(StreetViewPanoramaCamera paramStreetViewPanoramaCamera, long paramLong);
  
  public abstract void enablePanning(boolean paramBoolean);
  
  public abstract void enableStreetNames(boolean paramBoolean);
  
  public abstract void enableUserNavigation(boolean paramBoolean);
  
  public abstract void enableZoom(boolean paramBoolean);
  
  public abstract StreetViewPanoramaCamera getPanoramaCamera();
  
  public abstract StreetViewPanoramaLocation getStreetViewPanoramaLocation();
  
  public abstract boolean isPanningGesturesEnabled();
  
  public abstract boolean isStreetNamesEnabled();
  
  public abstract boolean isUserNavigationEnabled();
  
  public abstract boolean isZoomGesturesEnabled();
  
  public abstract d orientationToPoint(StreetViewPanoramaOrientation paramStreetViewPanoramaOrientation);
  
  public abstract StreetViewPanoramaOrientation pointToOrientation(d paramd);
  
  public abstract void setOnStreetViewPanoramaCameraChangeListener(r paramr);
  
  public abstract void setOnStreetViewPanoramaChangeListener(s params);
  
  public abstract void setOnStreetViewPanoramaClickListener(t paramt);
  
  public abstract void setPosition(LatLng paramLatLng);
  
  public abstract void setPositionWithID(String paramString);
  
  public abstract void setPositionWithRadius(LatLng paramLatLng, int paramInt);
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.IStreetViewPanoramaDelegate
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */