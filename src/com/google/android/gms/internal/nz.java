package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class nz
  implements Parcelable.Creator<ny>
{
  static void a(ny paramny, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1000, CK);
    b.a(paramParcel, 2, paramny.nt(), paramInt, false);
    b.a(paramParcel, 3, paramny.getInterval());
    b.c(paramParcel, 4, paramny.getPriority());
    b.H(paramParcel, i);
  }
  
  public ny cS(Parcel paramParcel)
  {
    int k = a.G(paramParcel);
    int j = 0;
    nu localnu = null;
    long l = ny.ahz;
    int i = 102;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.F(paramParcel);
      switch (a.aH(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1000: 
        j = a.g(paramParcel, m);
        break;
      case 2: 
        localnu = (nu)a.a(paramParcel, m, nu.CREATOR);
        break;
      case 3: 
        l = a.i(paramParcel, m);
        break;
      case 4: 
        i = a.g(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new ny(j, localnu, l, i);
  }
  
  public ny[] eO(int paramInt)
  {
    return new ny[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */