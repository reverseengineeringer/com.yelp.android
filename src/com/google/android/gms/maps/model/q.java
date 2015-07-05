package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class q
  implements Parcelable.Creator<StreetViewPanoramaCamera>
{
  static void a(StreetViewPanoramaCamera paramStreetViewPanoramaCamera, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, paramStreetViewPanoramaCamera.getVersionCode());
    b.a(paramParcel, 2, zoom);
    b.a(paramParcel, 3, tilt);
    b.a(paramParcel, 4, bearing);
    b.H(paramParcel, paramInt);
  }
  
  public StreetViewPanoramaCamera di(Parcel paramParcel)
  {
    float f3 = 0.0F;
    int j = a.G(paramParcel);
    float f1 = 0.0F;
    int i = 0;
    float f2 = 0.0F;
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
        f1 = a.l(paramParcel, k);
        break;
      case 3: 
        f2 = a.l(paramParcel, k);
        break;
      case 4: 
        f3 = a.l(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaCamera(i, f1, f2, f3);
  }
  
  public StreetViewPanoramaCamera[] fe(int paramInt)
  {
    return new StreetViewPanoramaCamera[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */