package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class kz
  implements Parcelable.Creator<ky>
{
  static void a(ky paramky, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, paramky.getVersionCode());
    b.a(paramParcel, 2, paramky.ic(), false);
    b.a(paramParcel, 3, paramky.id(), paramInt, false);
    b.H(paramParcel, i);
  }
  
  public ky Q(Parcel paramParcel)
  {
    kv localkv = null;
    int j = a.G(paramParcel);
    int i = 0;
    Parcel localParcel = null;
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
        localParcel = a.D(paramParcel, k);
        break;
      case 3: 
        localkv = (kv)a.a(paramParcel, k, kv.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new ky(i, localParcel, localkv);
  }
  
  public ky[] aR(int paramInt)
  {
    return new ky[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kz
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */