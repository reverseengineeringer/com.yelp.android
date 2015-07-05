package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class d
  implements Parcelable.Creator<LocationRequest>
{
  static void a(LocationRequest paramLocationRequest, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, mPriority);
    b.c(paramParcel, 1000, paramLocationRequest.getVersionCode());
    b.a(paramParcel, 2, agr);
    b.a(paramParcel, 3, ags);
    b.a(paramParcel, 4, Wg);
    b.a(paramParcel, 5, age);
    b.c(paramParcel, 6, agt);
    b.a(paramParcel, 7, agu);
    b.a(paramParcel, 8, agv);
    b.H(paramParcel, paramInt);
  }
  
  public LocationRequest cJ(Parcel paramParcel)
  {
    int m = a.G(paramParcel);
    int k = 0;
    int j = 102;
    long l4 = 3600000L;
    long l3 = 600000L;
    boolean bool = false;
    long l2 = Long.MAX_VALUE;
    int i = Integer.MAX_VALUE;
    float f = 0.0F;
    long l1 = 0L;
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
        k = a.g(paramParcel, n);
        break;
      case 2: 
        l4 = a.i(paramParcel, n);
        break;
      case 3: 
        l3 = a.i(paramParcel, n);
        break;
      case 4: 
        bool = a.c(paramParcel, n);
        break;
      case 5: 
        l2 = a.i(paramParcel, n);
        break;
      case 6: 
        i = a.g(paramParcel, n);
        break;
      case 7: 
        f = a.l(paramParcel, n);
        break;
      case 8: 
        l1 = a.i(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new LocationRequest(k, j, l4, l3, bool, l2, i, f, l1);
  }
  
  public LocationRequest[] eA(int paramInt)
  {
    return new LocationRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */