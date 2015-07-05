package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;

public class kx
  implements Parcelable.Creator<kv.a>
{
  static void a(kv.a parama, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, className, false);
    b.c(paramParcel, 3, NY, false);
    b.H(paramParcel, paramInt);
  }
  
  public kv.a P(Parcel paramParcel)
  {
    ArrayList localArrayList = null;
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
        localArrayList = a.c(paramParcel, k, kv.b.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new kv.a(i, str, localArrayList);
  }
  
  public kv.a[] aQ(int paramInt)
  {
    return new kv.a[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kx
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */