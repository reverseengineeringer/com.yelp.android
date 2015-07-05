package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class dn
  implements Parcelable.Creator<do>
{
  static void a(do paramdo, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, rG, false);
    b.a(paramParcel, 3, rH, false);
    b.a(paramParcel, 4, mimeType, false);
    b.a(paramParcel, 5, packageName, false);
    b.a(paramParcel, 6, rI, false);
    b.a(paramParcel, 7, rJ, false);
    b.a(paramParcel, 8, rK, false);
    b.H(paramParcel, paramInt);
  }
  
  public do e(Parcel paramParcel)
  {
    String str1 = null;
    int j = a.G(paramParcel);
    int i = 0;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    String str6 = null;
    String str7 = null;
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
        str7 = a.o(paramParcel, k);
        break;
      case 3: 
        str6 = a.o(paramParcel, k);
        break;
      case 4: 
        str5 = a.o(paramParcel, k);
        break;
      case 5: 
        str4 = a.o(paramParcel, k);
        break;
      case 6: 
        str3 = a.o(paramParcel, k);
        break;
      case 7: 
        str2 = a.o(paramParcel, k);
        break;
      case 8: 
        str1 = a.o(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new do(i, str7, str6, str5, str4, str3, str2, str1);
  }
  
  public do[] m(int paramInt)
  {
    return new do[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dn
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */