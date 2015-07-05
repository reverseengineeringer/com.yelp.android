package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class z
  implements Parcelable.Creator<y>
{
  static void a(y paramy, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, versionCode);
    b.a(paramParcel, 2, mi);
    b.a(paramParcel, 3, ms);
    b.H(paramParcel, paramInt);
  }
  
  public y a(Parcel paramParcel)
  {
    boolean bool2 = false;
    int j = a.G(paramParcel);
    boolean bool1 = false;
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
        i = a.g(paramParcel, k);
        break;
      case 2: 
        bool1 = a.c(paramParcel, k);
        break;
      case 3: 
        bool2 = a.c(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new y(i, bool1, bool2);
  }
  
  public y[] b(int paramInt)
  {
    return new y[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */