package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class kl
  implements Parcelable.Creator<kk>
{
  static void a(kk paramkk, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, CK);
    b.a(paramParcel, 2, ND, false);
    b.c(paramParcel, 3, NE);
    b.H(paramParcel, paramInt);
  }
  
  public kk I(Parcel paramParcel)
  {
    int j = 0;
    int k = a.G(paramParcel);
    String str = null;
    int i = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.F(paramParcel);
      switch (a.aH(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        i = a.g(paramParcel, m);
        break;
      case 2: 
        str = a.o(paramParcel, m);
        break;
      case 3: 
        j = a.g(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new kk(i, str, j);
  }
  
  public kk[] aJ(int paramInt)
  {
    return new kk[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */