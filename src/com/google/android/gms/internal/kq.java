package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class kq
  implements Parcelable.Creator<ko.a>
{
  static void a(ko.a parama, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, NJ, false);
    b.c(paramParcel, 3, NK);
    b.H(paramParcel, paramInt);
  }
  
  public ko.a L(Parcel paramParcel)
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
    return new ko.a(i, str, j);
  }
  
  public ko.a[] aM(int paramInt)
  {
    return new ko.a[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */