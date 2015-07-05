package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import java.util.ArrayList;

public class jw
  implements Parcelable.Creator<jg.a>
{
  static void a(jg.a parama, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.a(paramParcel, 1, parama.getAccountName(), false);
    b.c(paramParcel, 1000, parama.getVersionCode());
    b.b(paramParcel, 2, parama.ho(), false);
    b.c(paramParcel, 3, parama.hn());
    b.a(paramParcel, 4, parama.hq(), false);
    b.H(paramParcel, paramInt);
  }
  
  public jg.a E(Parcel paramParcel)
  {
    int i = 0;
    String str1 = null;
    int k = a.G(paramParcel);
    ArrayList localArrayList = null;
    String str2 = null;
    int j = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = a.F(paramParcel);
      switch (a.aH(m))
      {
      default: 
        a.b(paramParcel, m);
        break;
      case 1: 
        str2 = a.o(paramParcel, m);
        break;
      case 1000: 
        j = a.g(paramParcel, m);
        break;
      case 2: 
        localArrayList = a.C(paramParcel, m);
        break;
      case 3: 
        i = a.g(paramParcel, m);
        break;
      case 4: 
        str1 = a.o(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new jg.a(j, str2, localArrayList, i, str1);
  }
  
  public jg.a[] aG(int paramInt)
  {
    return new jg.a[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */