package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class f
  implements Parcelable.Creator<e>
{
  static void a(e parame, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, agw);
    b.c(paramParcel, 1000, parame.getVersionCode());
    b.c(paramParcel, 2, agx);
    b.a(paramParcel, 3, agy);
    b.H(paramParcel, paramInt);
  }
  
  public e cK(Parcel paramParcel)
  {
    int i = 1;
    int m = a.G(paramParcel);
    int k = 0;
    long l = 0L;
    int j = 1;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.F(paramParcel);
      switch (a.aH(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        j = a.g(paramParcel, n);
        break;
      case 1000: 
        k = a.g(paramParcel, n);
        break;
      case 2: 
        i = a.g(paramParcel, n);
        break;
      case 3: 
        l = a.i(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new e(k, j, i, l);
  }
  
  public e[] eE(int paramInt)
  {
    return new e[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */