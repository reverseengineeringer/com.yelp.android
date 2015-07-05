package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class kt
  implements Parcelable.Creator<kr.a>
{
  static void a(kr.a parama, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, parama.getVersionCode());
    b.c(paramParcel, 2, parama.hI());
    b.a(paramParcel, 3, parama.hO());
    b.c(paramParcel, 4, parama.hJ());
    b.a(paramParcel, 5, parama.hP());
    b.a(paramParcel, 6, parama.hQ(), false);
    b.c(paramParcel, 7, parama.hR());
    b.a(paramParcel, 8, parama.hT(), false);
    b.a(paramParcel, 9, parama.hV(), paramInt, false);
    b.H(paramParcel, i);
  }
  
  public kr.a M(Parcel paramParcel)
  {
    km localkm = null;
    int i = 0;
    int n = a.G(paramParcel);
    String str1 = null;
    String str2 = null;
    boolean bool1 = false;
    int j = 0;
    boolean bool2 = false;
    int k = 0;
    int m = 0;
    while (paramParcel.dataPosition() < n)
    {
      int i1 = a.F(paramParcel);
      switch (a.aH(i1))
      {
      default: 
        a.b(paramParcel, i1);
        break;
      case 1: 
        m = a.g(paramParcel, i1);
        break;
      case 2: 
        k = a.g(paramParcel, i1);
        break;
      case 3: 
        bool2 = a.c(paramParcel, i1);
        break;
      case 4: 
        j = a.g(paramParcel, i1);
        break;
      case 5: 
        bool1 = a.c(paramParcel, i1);
        break;
      case 6: 
        str2 = a.o(paramParcel, i1);
        break;
      case 7: 
        i = a.g(paramParcel, i1);
        break;
      case 8: 
        str1 = a.o(paramParcel, i1);
        break;
      case 9: 
        localkm = (km)a.a(paramParcel, i1, km.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != n) {
      throw new a.a("Overread allowed size end=" + n, paramParcel);
    }
    return new kr.a(m, k, bool2, j, bool1, str2, i, str1, localkm);
  }
  
  public kr.a[] aN(int paramInt)
  {
    return new kr.a[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */