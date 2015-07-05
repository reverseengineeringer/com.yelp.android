package com.google.android.gms.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.location.LocationRequest;
import java.util.List;

public class nm
  implements Parcelable.Creator<nl>
{
  static void a(nl paramnl, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.a(paramParcel, 1, We, paramInt, false);
    b.c(paramParcel, 1000, paramnl.getVersionCode());
    b.a(paramParcel, 2, ahh);
    b.a(paramParcel, 3, ahi);
    b.a(paramParcel, 4, ahj);
    b.c(paramParcel, 5, ahk, false);
    b.a(paramParcel, 6, mTag, false);
    b.H(paramParcel, i);
  }
  
  public nl cM(Parcel paramParcel)
  {
    String str = null;
    boolean bool1 = true;
    boolean bool3 = false;
    int j = a.G(paramParcel);
    Object localObject = nl.ahg;
    boolean bool2 = true;
    LocationRequest localLocationRequest = null;
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
        localLocationRequest = (LocationRequest)a.a(paramParcel, k, LocationRequest.CREATOR);
        break;
      case 1000: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        bool3 = a.c(paramParcel, k);
        break;
      case 3: 
        bool2 = a.c(paramParcel, k);
        break;
      case 4: 
        bool1 = a.c(paramParcel, k);
        break;
      case 5: 
        localObject = a.c(paramParcel, k, nd.CREATOR);
        break;
      case 6: 
        str = a.o(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new nl(i, localLocationRequest, bool3, bool2, bool1, (List)localObject, str);
  }
  
  public nl[] eG(int paramInt)
  {
    return new nl[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.nm
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */