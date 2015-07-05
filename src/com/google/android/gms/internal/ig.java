package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class ig
  implements Parcelable.Creator<if>
{
  static void a(if paramif, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, responseCode);
    b.c(paramParcel, 1000, versionCode);
    b.a(paramParcel, 2, Ep, false);
    b.a(paramParcel, 3, Eq, false);
    b.H(paramParcel, paramInt);
  }
  
  public if[] U(int paramInt)
  {
    return new if[paramInt];
  }
  
  public if t(Parcel paramParcel)
  {
    byte[] arrayOfByte = null;
    int j = 0;
    int k = a.G(paramParcel);
    Bundle localBundle = null;
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
        j = a.g(paramParcel, m);
        break;
      case 1000: 
        i = a.g(paramParcel, m);
        break;
      case 2: 
        localBundle = a.q(paramParcel, m);
        break;
      case 3: 
        arrayOfByte = a.r(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new if(i, j, localBundle, arrayOfByte);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ig
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */