package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class nx
  implements Parcelable.Creator<nw>
{
  static void a(nw paramnw, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, CK);
    b.a(paramParcel, 2, paramnw.nw(), false);
    b.a(paramParcel, 3, paramnw.getTag(), false);
    b.a(paramParcel, 4, paramnw.getSource(), false);
    b.H(paramParcel, paramInt);
  }
  
  public nw cR(Parcel paramParcel)
  {
    String str3 = null;
    int j = a.G(paramParcel);
    int i = 0;
    String str2 = null;
    String str1 = null;
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
        str1 = a.o(paramParcel, k);
        break;
      case 3: 
        str2 = a.o(paramParcel, k);
        break;
      case 4: 
        str3 = a.o(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new nw(i, str1, str2, str3);
  }
  
  public nw[] eN(int paramInt)
  {
    return new nw[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */