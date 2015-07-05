package com.google.android.gms.maps.model.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class f
  implements Parcelable.Creator<e>
{
  static void a(e parame, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, parame.getVersionCode());
    b.a(paramParcel, 2, parame.oj(), paramInt, false);
    b.H(paramParcel, i);
  }
  
  public e dr(Parcel paramParcel)
  {
    int j = com.google.android.gms.common.internal.safeparcel.a.G(paramParcel);
    int i = 0;
    a locala = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = com.google.android.gms.common.internal.safeparcel.a.F(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.a.aH(k))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.a.b(paramParcel, k);
        break;
      case 1: 
        i = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, k);
        break;
      case 2: 
        locala = (a)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, k, a.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new e(i, locala);
  }
  
  public e[] fn(int paramInt)
  {
    return new e[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */