package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class az
  implements Parcelable.Creator<ay>
{
  static void a(ay paramay, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, op, false);
    b.c(paramParcel, 3, height);
    b.c(paramParcel, 4, heightPixels);
    b.a(paramParcel, 5, oq);
    b.c(paramParcel, 6, width);
    b.c(paramParcel, 7, widthPixels);
    b.a(paramParcel, 8, or, paramInt, false);
    b.H(paramParcel, i);
  }
  
  public ay c(Parcel paramParcel)
  {
    ay[] arrayOfay = null;
    int i = 0;
    int i1 = a.G(paramParcel);
    int j = 0;
    boolean bool = false;
    int k = 0;
    int m = 0;
    String str = null;
    int n = 0;
    while (paramParcel.dataPosition() < i1)
    {
      int i2 = a.F(paramParcel);
      switch (a.aH(i2))
      {
      default: 
        a.b(paramParcel, i2);
        break;
      case 1: 
        n = a.g(paramParcel, i2);
        break;
      case 2: 
        str = a.o(paramParcel, i2);
        break;
      case 3: 
        m = a.g(paramParcel, i2);
        break;
      case 4: 
        k = a.g(paramParcel, i2);
        break;
      case 5: 
        bool = a.c(paramParcel, i2);
        break;
      case 6: 
        j = a.g(paramParcel, i2);
        break;
      case 7: 
        i = a.g(paramParcel, i2);
        break;
      case 8: 
        arrayOfay = (ay[])a.b(paramParcel, i2, ay.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != i1) {
      throw new a.a("Overread allowed size end=" + i1, paramParcel);
    }
    return new ay(n, str, m, k, bool, j, i, arrayOfay);
  }
  
  public ay[] g(int paramInt)
  {
    return new ay[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.az
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */