package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ku
  implements Parcelable.Creator<kv.b>
{
  static void a(kv.b paramb, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, fv, false);
    b.a(paramParcel, 3, NZ, paramInt, false);
    b.H(paramParcel, i);
  }
  
  public kv.b N(Parcel paramParcel)
  {
    kr.a locala = null;
    int j = a.G(paramParcel);
    int i = 0;
    String str = null;
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
        str = a.o(paramParcel, k);
        break;
      case 3: 
        locala = (kr.a)a.a(paramParcel, k, kr.a.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new kv.b(i, str, locala);
  }
  
  public kv.b[] aO(int paramInt)
  {
    return new kv.b[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ku
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */