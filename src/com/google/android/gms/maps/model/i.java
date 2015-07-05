package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class i
  implements Parcelable.Creator<LatLng>
{
  static void a(LatLng paramLatLng, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, paramLatLng.getVersionCode());
    b.a(paramParcel, 2, latitude);
    b.a(paramParcel, 3, longitude);
    b.H(paramParcel, paramInt);
  }
  
  public LatLng de(Parcel paramParcel)
  {
    double d1 = 0.0D;
    int j = a.G(paramParcel);
    int i = 0;
    double d2 = 0.0D;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.F(paramParcel);
      switch (a.aH(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        d2 = a.m(paramParcel, k);
        break;
      case 3: 
        d1 = a.m(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new LatLng(i, d2, d1);
  }
  
  public LatLng[] fa(int paramInt)
  {
    return new LatLng[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */