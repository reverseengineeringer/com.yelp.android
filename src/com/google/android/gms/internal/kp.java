package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;

public class kp
  implements Parcelable.Creator<ko>
{
  static void a(ko paramko, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, paramko.getVersionCode());
    b.c(paramParcel, 2, paramko.hH(), false);
    b.H(paramParcel, paramInt);
  }
  
  public ko K(Parcel paramParcel)
  {
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
        localArrayList = a.c(paramParcel, k, ko.a.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new ko(i, localArrayList);
  }
  
  public ko[] aL(int paramInt)
  {
    return new ko[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kp
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */