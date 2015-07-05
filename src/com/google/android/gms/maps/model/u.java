package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class u
  implements Parcelable.Creator<Tile>
{
  static void a(Tile paramTile, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, paramTile.getVersionCode());
    b.c(paramParcel, 2, width);
    b.c(paramParcel, 3, height);
    b.a(paramParcel, 4, data, false);
    b.H(paramParcel, paramInt);
  }
  
  public Tile dm(Parcel paramParcel)
  {
    int k = 0;
    int m = a.G(paramParcel);
    byte[] arrayOfByte = null;
    int j = 0;
    int i = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.F(paramParcel);
      switch (a.aH(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        i = a.g(paramParcel, n);
        break;
      case 2: 
        j = a.g(paramParcel, n);
        break;
      case 3: 
        k = a.g(paramParcel, n);
        break;
      case 4: 
        arrayOfByte = a.r(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new Tile(i, j, k, arrayOfByte);
  }
  
  public Tile[] fi(int paramInt)
  {
    return new Tile[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */