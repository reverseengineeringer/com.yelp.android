package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ot
  implements Parcelable.Creator<or>
{
  static void a(or paramor, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, amW);
    b.a(paramParcel, 3, tag, false);
    b.a(paramParcel, 4, amX, false);
    b.a(paramParcel, 5, amY, false);
    b.H(paramParcel, paramInt);
  }
  
  public or dt(Parcel paramParcel)
  {
    Bundle localBundle = null;
    int j = a.G(paramParcel);
    int i = 0;
    long l = 0L;
    byte[] arrayOfByte = null;
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
        l = a.i(paramParcel, k);
        break;
      case 3: 
        str = a.o(paramParcel, k);
        break;
      case 4: 
        arrayOfByte = a.r(paramParcel, k);
        break;
      case 5: 
        localBundle = a.q(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new or(i, l, str, arrayOfByte, localBundle);
  }
  
  public or[] fq(int paramInt)
  {
    return new or[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ot
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */