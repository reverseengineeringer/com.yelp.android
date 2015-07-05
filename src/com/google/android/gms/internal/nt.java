package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class nt
  implements Parcelable.Creator<ns>
{
  static void a(ns paramns, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, paramns.np());
    b.c(paramParcel, 1000, paramns.getVersionCode());
    b.c(paramParcel, 2, paramns.ns());
    b.a(paramParcel, 3, paramns.nt(), paramInt, false);
    b.H(paramParcel, i);
  }
  
  public ns cP(Parcel paramParcel)
  {
    int j = 0;
    int m = a.G(paramParcel);
    int k = -1;
    nu localnu = null;
    int i = 0;
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
        i = a.g(paramParcel, n);
        break;
      case 2: 
        k = a.g(paramParcel, n);
        break;
      case 3: 
        localnu = (nu)a.a(paramParcel, n, nu.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new ns(i, j, k, localnu);
  }
  
  public ns[] eL(int paramInt)
  {
    return new ns[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nt
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */