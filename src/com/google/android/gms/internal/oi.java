package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class oi
  implements Parcelable.Creator<oh>
{
  static void a(oh paramoh, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.a(paramParcel, 1, akg, false);
    b.c(paramParcel, 1000, versionCode);
    b.a(paramParcel, 2, akh, false);
    b.a(paramParcel, 3, aki, false);
    b.a(paramParcel, 4, akj, false);
    b.H(paramParcel, paramInt);
  }
  
  public oh cW(Parcel paramParcel)
  {
    String str1 = null;
    int j = a.G(paramParcel);
    int i = 0;
    String str2 = null;
    String str3 = null;
    String str4 = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.F(paramParcel);
      switch (a.aH(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        str4 = a.o(paramParcel, k);
        break;
      case 1000: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        str3 = a.o(paramParcel, k);
        break;
      case 3: 
        str2 = a.o(paramParcel, k);
        break;
      case 4: 
        str1 = a.o(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new oh(i, str4, str3, str2, str1);
  }
  
  public oh[] eS(int paramInt)
  {
    return new oh[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.oi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */