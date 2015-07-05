package com.google.android.gms.maps.model;

public final class CameraPosition$Builder
{
  private LatLng alN;
  private float alO;
  private float alP;
  private float alQ;
  
  public CameraPosition$Builder() {}
  
  public CameraPosition$Builder(CameraPosition paramCameraPosition)
  {
    alN = target;
    alO = zoom;
    alP = tilt;
    alQ = bearing;
  }
  
  public Builder bearing(float paramFloat)
  {
    alQ = paramFloat;
    return this;
  }
  
  public CameraPosition build()
  {
    return new CameraPosition(alN, alO, alP, alQ);
  }
  
  public Builder target(LatLng paramLatLng)
  {
    alN = paramLatLng;
    return this;
  }
  
  public Builder tilt(float paramFloat)
  {
    alP = paramFloat;
    return this;
  }
  
  public Builder zoom(float paramFloat)
  {
    alO = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.CameraPosition.Builder
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */