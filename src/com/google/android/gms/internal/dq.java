package com.google.android.gms.internal;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class dq
  implements Parcelable.Creator<dr>
{
  static void a(dr paramdr, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, sb, paramInt, false);
    b.a(paramParcel, 3, paramdr.ck(), false);
    b.a(paramParcel, 4, paramdr.cl(), false);
    b.a(paramParcel, 5, paramdr.cm(), false);
    b.a(paramParcel, 6, paramdr.cn(), false);
    b.a(paramParcel, 7, sg, false);
    b.a(paramParcel, 8, sh);
    b.a(paramParcel, 9, si, false);
    b.a(paramParcel, 10, paramdr.cp(), false);
    b.c(paramParcel, 11, orientation);
    b.c(paramParcel, 12, sk);
    b.a(paramParcel, 13, rH, false);
    b.a(paramParcel, 14, lO, paramInt, false);
    b.a(paramParcel, 15, paramdr.co(), false);
    b.a(paramParcel, 17, sn, paramInt, false);
    b.a(paramParcel, 16, sm, false);
    b.H(paramParcel, i);
  }
  
  public dr f(Parcel paramParcel)
  {
    int m = a.G(paramParcel);
    int k = 0;
    do localdo = null;
    IBinder localIBinder6 = null;
    IBinder localIBinder5 = null;
    IBinder localIBinder4 = null;
    IBinder localIBinder3 = null;
    String str4 = null;
    boolean bool = false;
    String str3 = null;
    IBinder localIBinder2 = null;
    int j = 0;
    int i = 0;
    String str2 = null;
    gs localgs = null;
    IBinder localIBinder1 = null;
    String str1 = null;
    y localy = null;
    while (paramParcel.dataPosition() < m)
    {
      int n = a.F(paramParcel);
      switch (a.aH(n))
      {
      default: 
        a.b(paramParcel, n);
        break;
      case 1: 
        k = a.g(paramParcel, n);
        break;
      case 2: 
        localdo = (do)a.a(paramParcel, n, do.CREATOR);
        break;
      case 3: 
        localIBinder6 = a.p(paramParcel, n);
        break;
      case 4: 
        localIBinder5 = a.p(paramParcel, n);
        break;
      case 5: 
        localIBinder4 = a.p(paramParcel, n);
        break;
      case 6: 
        localIBinder3 = a.p(paramParcel, n);
        break;
      case 7: 
        str4 = a.o(paramParcel, n);
        break;
      case 8: 
        bool = a.c(paramParcel, n);
        break;
      case 9: 
        str3 = a.o(paramParcel, n);
        break;
      case 10: 
        localIBinder2 = a.p(paramParcel, n);
        break;
      case 11: 
        j = a.g(paramParcel, n);
        break;
      case 12: 
        i = a.g(paramParcel, n);
        break;
      case 13: 
        str2 = a.o(paramParcel, n);
        break;
      case 14: 
        localgs = (gs)a.a(paramParcel, n, gs.CREATOR);
        break;
      case 15: 
        localIBinder1 = a.p(paramParcel, n);
        break;
      case 17: 
        localy = (y)a.a(paramParcel, n, y.CREATOR);
        break;
      case 16: 
        str1 = a.o(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new a.a("Overread allowed size end=" + m, paramParcel);
    }
    return new dr(k, localdo, localIBinder6, localIBinder5, localIBinder4, localIBinder3, str4, bool, str3, localIBinder2, j, i, str2, localgs, localIBinder1, str1, localy);
  }
  
  public dr[] n(int paramInt)
  {
    return new dr[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dq
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */