package com.google.android.gms.maps;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.StreetViewPanoramaCamera;
import com.yelp.android.bj.m;

public final class StreetViewPanoramaOptions
  implements SafeParcelable
{
  public static final k CREATOR = new k();
  private final int a;
  private StreetViewPanoramaCamera b;
  private String c;
  private LatLng d;
  private Integer e;
  private Boolean f = Boolean.valueOf(true);
  private Boolean g = Boolean.valueOf(true);
  private Boolean h = Boolean.valueOf(true);
  private Boolean i = Boolean.valueOf(true);
  private Boolean j;
  
  public StreetViewPanoramaOptions()
  {
    a = 1;
  }
  
  StreetViewPanoramaOptions(int paramInt, StreetViewPanoramaCamera paramStreetViewPanoramaCamera, String paramString, LatLng paramLatLng, Integer paramInteger, byte paramByte1, byte paramByte2, byte paramByte3, byte paramByte4, byte paramByte5)
  {
    a = paramInt;
    b = paramStreetViewPanoramaCamera;
    d = paramLatLng;
    e = paramInteger;
    c = paramString;
    f = m.a(paramByte1);
    g = m.a(paramByte2);
    h = m.a(paramByte3);
    i = m.a(paramByte4);
    j = m.a(paramByte5);
  }
  
  int a()
  {
    return a;
  }
  
  byte b()
  {
    return m.a(f);
  }
  
  byte c()
  {
    return m.a(g);
  }
  
  byte d()
  {
    return m.a(h);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  byte e()
  {
    return m.a(i);
  }
  
  byte f()
  {
    return m.a(j);
  }
  
  public StreetViewPanoramaCamera g()
  {
    return b;
  }
  
  public LatLng h()
  {
    return d;
  }
  
  public Integer i()
  {
    return e;
  }
  
  public String j()
  {
    return c;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    k.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.StreetViewPanoramaOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */