package com.google.android.gms.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;

public class fi
  implements Parcelable.Creator<fh>
{
  static void a(fh paramfh, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, tK, false);
    b.a(paramParcel, 3, tL, paramInt, false);
    b.a(paramParcel, 4, lS, paramInt, false);
    b.a(paramParcel, 5, lL, false);
    b.a(paramParcel, 6, applicationInfo, paramInt, false);
    b.a(paramParcel, 7, tM, paramInt, false);
    b.a(paramParcel, 8, tN, false);
    b.a(paramParcel, 9, tO, false);
    b.a(paramParcel, 10, tP, false);
    b.a(paramParcel, 11, lO, paramInt, false);
    b.a(paramParcel, 12, tQ, false);
    b.c(paramParcel, 13, tR);
    b.b(paramParcel, 14, mc, false);
    b.a(paramParcel, 15, tS, false);
    b.a(paramParcel, 16, tT);
    b.H(paramParcel, i);
  }
  
  public fh h(Parcel paramParcel)
  {
    int k = a.G(paramParcel);
    int j = 0;
    Bundle localBundle3 = null;
    av localav = null;
    ay localay = null;
    String str4 = null;
    ApplicationInfo localApplicationInfo = null;
    PackageInfo localPackageInfo = null;
    String str3 = null;
    String str2 = null;
    String str1 = null;
    gs localgs = null;
    Bundle localBundle2 = null;
    int i = 0;
    ArrayList localArrayList = null;
    Bundle localBundle1 = null;
    boolean bool = false;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.F(paramParcel);
      switch (a.aH(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        j = a.g(paramParcel, m);
        break;
      case 2: 
        localBundle3 = a.q(paramParcel, m);
        break;
      case 3: 
        localav = (av)a.a(paramParcel, m, av.CREATOR);
        break;
      case 4: 
        localay = (ay)a.a(paramParcel, m, ay.CREATOR);
        break;
      case 5: 
        str4 = a.o(paramParcel, m);
        break;
      case 6: 
        localApplicationInfo = (ApplicationInfo)a.a(paramParcel, m, ApplicationInfo.CREATOR);
        break;
      case 7: 
        localPackageInfo = (PackageInfo)a.a(paramParcel, m, PackageInfo.CREATOR);
        break;
      case 8: 
        str3 = a.o(paramParcel, m);
        break;
      case 9: 
        str2 = a.o(paramParcel, m);
        break;
      case 10: 
        str1 = a.o(paramParcel, m);
        break;
      case 11: 
        localgs = (gs)a.a(paramParcel, m, gs.CREATOR);
        break;
      case 12: 
        localBundle2 = a.q(paramParcel, m);
        break;
      case 13: 
        i = a.g(paramParcel, m);
        break;
      case 14: 
        localArrayList = a.C(paramParcel, m);
        break;
      case 15: 
        localBundle1 = a.q(paramParcel, m);
        break;
      case 16: 
        bool = a.c(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new fh(j, localBundle3, localav, localay, str4, localApplicationInfo, localPackageInfo, str3, str2, str1, localgs, localBundle2, i, localArrayList, localBundle1, bool);
  }
  
  public fh[] q(int paramInt)
  {
    return new fh[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */