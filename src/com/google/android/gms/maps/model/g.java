package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class g
  implements Parcelable.Creator<LatLngBounds>
{
  static void a(LatLngBounds paramLatLngBounds, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, paramLatLngBounds.getVersionCode());
    b.a(paramParcel, 2, southwest, paramInt, false);
    b.a(paramParcel, 3, northeast, paramInt, false);
    b.H(paramParcel, i);
  }
  
  public LatLngBounds dd(Parcel paramParcel)
  {
    LatLng localLatLng1 = null;
    int j = a.G(paramParcel);
    int i = 0;
    LatLng localLatLng2 = null;
    if (paramParcel.dataPosition() < j)
    {
      int k = a.F(paramParcel);
      switch (a.aH(k))
      {
      default: 
        a.b(paramParcel, k);
      }
      for (;;)
      {
        break;
        i = a.g(paramParcel, k);
        continue;
        localLatLng2 = (LatLng)a.a(paramParcel, k, LatLng.CREATOR);
        continue;
        localLatLng1 = (LatLng)a.a(paramParcel, k, LatLng.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new LatLngBounds(i, localLatLng2, localLatLng1);
  }
  
  public LatLngBounds[] eZ(int paramInt)
  {
    return new LatLngBounds[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */