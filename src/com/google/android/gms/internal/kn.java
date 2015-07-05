package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class kn
  implements Parcelable.Creator<km>
{
  static void a(km paramkm, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, paramkm.getVersionCode());
    b.a(paramParcel, 2, paramkm.hF(), paramInt, false);
    b.H(paramParcel, i);
  }
  
  public km J(Parcel paramParcel)
  {
    int j = a.G(paramParcel);
    int i = 0;
    ko localko = null;
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
        localko = (ko)a.a(paramParcel, k, ko.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new km(i, localko);
  }
  
  public km[] aK(int paramInt)
  {
    return new km[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */