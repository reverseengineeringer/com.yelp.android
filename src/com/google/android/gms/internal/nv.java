package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;

public class nv
  implements Parcelable.Creator<nu>
{
  static void a(nu paramnu, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, ahn, false);
    b.c(paramParcel, 1000, CK);
    b.a(paramParcel, 2, paramnu.nu(), false);
    b.a(paramParcel, 3, paramnu.nv());
    b.c(paramParcel, 4, aht, false);
    b.b(paramParcel, 6, ahu, false);
    b.H(paramParcel, paramInt);
  }
  
  public nu cQ(Parcel paramParcel)
  {
    boolean bool = false;
    ArrayList localArrayList1 = null;
    int j = a.G(paramParcel);
    ArrayList localArrayList2 = null;
    String str = null;
    ArrayList localArrayList3 = null;
    int i = 0;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.F(paramParcel);
      switch (a.aH(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        localArrayList3 = a.c(paramParcel, k, oa.CREATOR);
        break;
      case 1000: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        str = a.o(paramParcel, k);
        break;
      case 3: 
        bool = a.c(paramParcel, k);
        break;
      case 4: 
        localArrayList2 = a.c(paramParcel, k, oe.CREATOR);
        break;
      case 6: 
        localArrayList1 = a.C(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new nu(i, localArrayList3, str, bool, localArrayList2, localArrayList1);
  }
  
  public nu[] eM(int paramInt)
  {
    return new nu[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */