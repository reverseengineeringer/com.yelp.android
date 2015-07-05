package com.google.android.gms.maps.model.internal;

import android.os.IInterface;
import com.google.android.gms.maps.model.LatLng;
import java.util.List;

public abstract interface m
  extends IInterface
{
  public abstract boolean a(m paramm);
  
  public abstract int getFillColor();
  
  public abstract List getHoles();
  
  public abstract String getId();
  
  public abstract List<LatLng> getPoints();
  
  public abstract int getStrokeColor();
  
  public abstract float getStrokeWidth();
  
  public abstract float getZIndex();
  
  public abstract int hashCodeRemote();
  
  public abstract boolean isGeodesic();
  
  public abstract boolean isVisible();
  
  public abstract void remove();
  
  public abstract void setFillColor(int paramInt);
  
  public abstract void setGeodesic(boolean paramBoolean);
  
  public abstract void setHoles(List paramList);
  
  public abstract void setPoints(List<LatLng> paramList);
  
  public abstract void setStrokeColor(int paramInt);
  
  public abstract void setStrokeWidth(float paramFloat);
  
  public abstract void setVisible(boolean paramBoolean);
  
  public abstract void setZIndex(float paramFloat);
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.m
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */