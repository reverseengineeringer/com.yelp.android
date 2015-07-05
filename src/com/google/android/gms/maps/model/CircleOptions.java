package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.aa;

public final class CircleOptions
  implements SafeParcelable
{
  public static final c CREATOR = new c();
  private final int CK;
  private LatLng alS = null;
  private double alT = 0.0D;
  private float alU = 10.0F;
  private int alV = -16777216;
  private int alW = 0;
  private float alX = 0.0F;
  private boolean alY = true;
  
  public CircleOptions()
  {
    CK = 1;
  }
  
  CircleOptions(int paramInt1, LatLng paramLatLng, double paramDouble, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean)
  {
    CK = paramInt1;
    alS = paramLatLng;
    alT = paramDouble;
    alU = paramFloat1;
    alV = paramInt2;
    alW = paramInt3;
    alX = paramFloat2;
    alY = paramBoolean;
  }
  
  public CircleOptions center(LatLng paramLatLng)
  {
    alS = paramLatLng;
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public CircleOptions fillColor(int paramInt)
  {
    alW = paramInt;
    return this;
  }
  
  public LatLng getCenter()
  {
    return alS;
  }
  
  public int getFillColor()
  {
    return alW;
  }
  
  public double getRadius()
  {
    return alT;
  }
  
  public int getStrokeColor()
  {
    return alV;
  }
  
  public float getStrokeWidth()
  {
    return alU;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public float getZIndex()
  {
    return alX;
  }
  
  public boolean isVisible()
  {
    return alY;
  }
  
  public CircleOptions radius(double paramDouble)
  {
    alT = paramDouble;
    return this;
  }
  
  public CircleOptions strokeColor(int paramInt)
  {
    alV = paramInt;
    return this;
  }
  
  public CircleOptions strokeWidth(float paramFloat)
  {
    alU = paramFloat;
    return this;
  }
  
  public CircleOptions visible(boolean paramBoolean)
  {
    alY = paramBoolean;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (aa.ob())
    {
      d.a(this, paramParcel, paramInt);
      return;
    }
    c.a(this, paramParcel, paramInt);
  }
  
  public CircleOptions zIndex(float paramFloat)
  {
    alX = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.CircleOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */