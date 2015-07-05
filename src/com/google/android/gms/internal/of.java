package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class of
  implements Parcelable.Creator<oe>
{
  static void a(oe paramoe, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.a(paramParcel, 1, vc, false);
    b.c(paramParcel, 1000, CK);
    b.c(paramParcel, 2, ake);
    b.H(paramParcel, paramInt);
  }
  
  public oe cV(Parcel paramParcel)
  {
    int j = 0;
    int k = a.G(paramParcel);
    String str = null;
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
        str = a.o(paramParcel, m);
        break;
      case 1000: 
        i = a.g(paramParcel, m);
        break;
      case 2: 
        j = a.g(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new oe(i, str, j);
  }
  
  public oe[] eR(int paramInt)
  {
    return new oe[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.of
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */