package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.a;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;

public final class StreetViewPanoramaOptions
  implements SafeParcelable
{
  public static final c CREATOR = new c();
  private final int CK;
  private Boolean akG;
  private Boolean akM = Boolean.valueOf(true);
  private StreetViewPanoramaCamera alr;
  private String als;
  private LatLng alt;
  private Integer alu;
  private Boolean alv = Boolean.valueOf(true);
  private Boolean alw = Boolean.valueOf(true);
  private Boolean alx = Boolean.valueOf(true);
  
  public StreetViewPanoramaOptions()
  {
    CK = 1;
  }
  
  StreetViewPanoramaOptions(int paramInt, StreetViewPanoramaCamera paramStreetViewPanoramaCamera, String paramString, LatLng paramLatLng, Integer paramInteger, byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4, byte paramByte5)
  {
    CK = paramInt;
    alr = paramStreetViewPanoramaCamera;
    alt = paramLatLng;
    alu = paramInteger;
    als = paramString;
    alv = a.a(paramByte1);
    akM = a.a(paramByte2);
    alw = a.a(paramByte3);
    alx = a.a(paramByte4);
    akG = a.a(paramByte5);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Boolean getPanningGesturesEnabled()
  {
    return alw;
  }
  
  public String getPanoramaId()
  {
    return als;
  }
  
  public LatLng getPosition()
  {
    return alt;
  }
  
  public Integer getRadius()
  {
    return alu;
  }
  
  public Boolean getStreetNamesEnabled()
  {
    return alx;
  }
  
  public StreetViewPanoramaCamera getStreetViewPanoramaCamera()
  {
    return alr;
  }
  
  public Boolean getUseViewLifecycleInFragment()
  {
    return akG;
  }
  
  public Boolean getUserNavigationEnabled()
  {
    return alv;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public Boolean getZoomGesturesEnabled()
  {
    return akM;
  }
  
  byte nE()
  {
    return a.c(akG);
  }
  
  byte nI()
  {
    return a.c(akM);
  }
  
  byte nS()
  {
    return a.c(alv);
  }
  
  byte nT()
  {
    return a.c(alw);
  }
  
  byte nU()
  {
    return a.c(alx);
  }
  
  public StreetViewPanoramaOptions panningGesturesEnabled(boolean paramBoolean)
  {
    alw = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public StreetViewPanoramaOptions panoramaCamera(StreetViewPanoramaCamera paramStreetViewPanoramaCamera)
  {
    alr = paramStreetViewPanoramaCamera;
    return this;
  }
  
  public StreetViewPanoramaOptions panoramaId(String paramString)
  {
    als = paramString;
    return this;
  }
  
  public StreetViewPanoramaOptions position(LatLng paramLatLng)
  {
    alt = paramLatLng;
    return this;
  }
  
  public StreetViewPanoramaOptions position(LatLng paramLatLng, Integer paramInteger)
  {
    alt = paramLatLng;
    alu = paramInteger;
    return this;
  }
  
  public StreetViewPanoramaOptions streetNamesEnabled(boolean paramBoolean)
  {
    alx = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public StreetViewPanoramaOptions useViewLifecycleInFragment(boolean paramBoolean)
  {
    akG = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public StreetViewPanoramaOptions userNavigationEnabled(boolean paramBoolean)
  {
    alv = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    c.a(this, paramParcel, paramInt);
  }
  
  public StreetViewPanoramaOptions zoomGesturesEnabled(boolean paramBoolean)
  {
    akM = Boolean.valueOf(paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */