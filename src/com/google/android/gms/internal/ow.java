package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ow
  implements Parcelable.Creator<ov>
{
  static void a(ov paramov, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, packageName, false);
    b.c(paramParcel, 3, ang);
    b.c(paramParcel, 4, anh);
    b.a(paramParcel, 5, ani, false);
    b.a(paramParcel, 6, anj, false);
    b.a(paramParcel, 7, ank);
    b.a(paramParcel, 8, anl, false);
    b.H(paramParcel, paramInt);
  }
  
  public ov du(Parcel paramParcel)
  {
    int i = 0;
    String str1 = null;
    int m = a.G(paramParcel);
    boolean bool = true;
    String str2 = null;
    String str3 = null;
    int j = 0;
    String str4 = null;
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
        str4 = a.o(paramParcel, n);
        break;
      case 3: 
        j = a.g(paramParcel, n);
        break;
      case 4: 
        i = a.g(paramParcel, n);
        break;
      case 5: 
        str3 = a.o(paramParcel, n);
        break;
      case 6: 
        str2 = a.o(paramParcel, n);
        break;
      case 7: 
        bool = a.c(paramParcel, n);
        break;
      case 8: 
        str1 = a.o(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new ov(k, str4, j, i, str3, str2, bool, str1);
  }
  
  public ov[] fr(int paramInt)
  {
    return new ov[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ow
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */