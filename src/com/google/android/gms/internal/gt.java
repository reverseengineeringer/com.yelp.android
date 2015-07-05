package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class gt
  implements Parcelable.Creator<gs>
{
  static void a(gs paramgs, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, wS, false);
    b.c(paramParcel, 3, wT);
    b.c(paramParcel, 4, wU);
    b.a(paramParcel, 5, wV);
    b.H(paramParcel, paramInt);
  }
  
  public gs j(Parcel paramParcel)
  {
    boolean bool = false;
    int m = a.G(paramParcel);
    String str = null;
    int i = 0;
    int j = 0;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.F(paramParcel);
      switch (a.aH(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        k = a.g(paramParcel, n);
        break;
      case 2: 
        str = a.o(paramParcel, n);
        break;
      case 3: 
        j = a.g(paramParcel, n);
        break;
      case 4: 
        i = a.g(paramParcel, n);
        break;
      case 5: 
        bool = a.c(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new gs(k, str, j, i, bool);
  }
  
  public gs[] w(int paramInt)
  {
    return new gs[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */