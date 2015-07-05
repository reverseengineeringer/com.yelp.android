package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class r
  implements Parcelable.Creator<StreetViewPanoramaLink>
{
  static void a(StreetViewPanoramaLink paramStreetViewPanoramaLink, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, paramStreetViewPanoramaLink.getVersionCode());
    b.a(paramParcel, 2, panoId, false);
    b.a(paramParcel, 3, bearing);
    b.H(paramParcel, paramInt);
  }
  
  public StreetViewPanoramaLink dj(Parcel paramParcel)
  {
    int j = a.G(paramParcel);
    int i = 0;
    String str = null;
    float f = 0.0F;
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
        str = a.o(paramParcel, k);
        break;
      case 3: 
        f = a.l(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaLink(i, str, f);
  }
  
  public StreetViewPanoramaLink[] ff(int paramInt)
  {
    return new StreetViewPanoramaLink[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */