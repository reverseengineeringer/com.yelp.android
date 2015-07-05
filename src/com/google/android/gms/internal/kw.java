package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;

public class kw
  implements Parcelable.Creator<kv>
{
  static void a(kv paramkv, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, paramkv.getVersionCode());
    b.c(paramParcel, 2, paramkv.hZ(), false);
    b.a(paramParcel, 3, paramkv.ia(), false);
    b.H(paramParcel, paramInt);
  }
  
  public kv O(Parcel paramParcel)
  {
    String str = null;
    int j = a.G(paramParcel);
    int i = 0;
    ArrayList localArrayList = null;
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
        localArrayList = a.c(paramParcel, k, kv.a.CREATOR);
        break;
      case 3: 
        str = a.o(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new kv(i, localArrayList, str);
  }
  
  public kv[] aP(int paramInt)
  {
    return new kv[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */