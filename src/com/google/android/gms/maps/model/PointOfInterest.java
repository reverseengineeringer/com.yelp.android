package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class PointOfInterest
  implements SafeParcelable
{
  public static final k CREATOR = new k();
  public final LatLng a;
  public final String b;
  public final String c;
  private final int d;
  
  PointOfInterest(int paramInt, LatLng paramLatLng, String paramString1, String paramString2)
  {
    d = paramInt;
    a = paramLatLng;
    b = paramString1;
    c = paramString2;
  }
  
  int a()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    k.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.PointOfInterest
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */