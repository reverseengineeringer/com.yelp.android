package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.internal.nn;
import java.util.ArrayList;

public class a
  implements Parcelable.Creator<GeofencingRequest>
{
  static void a(GeofencingRequest paramGeofencingRequest, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, paramGeofencingRequest.ng(), false);
    b.c(paramParcel, 1000, paramGeofencingRequest.getVersionCode());
    b.c(paramParcel, 2, paramGeofencingRequest.getInitialTrigger());
    b.H(paramParcel, paramInt);
  }
  
  public GeofencingRequest cI(Parcel paramParcel)
  {
    int j = 0;
    int k = com.google.android.gms.common.internal.safeparcel.a.G(paramParcel);
    ArrayList localArrayList = null;
    int i = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = com.google.android.gms.common.internal.safeparcel.a.F(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.a.aH(m))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.a.b(paramParcel, m);
        break;
      case 1: 
        localArrayList = com.google.android.gms.common.internal.safeparcel.a.c(paramParcel, m, nn.CREATOR);
        break;
      case 1000: 
        i = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, m);
        break;
      case 2: 
        j = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new GeofencingRequest(i, localArrayList, j);
  }
  
  public GeofencingRequest[] ex(int paramInt)
  {
    return new GeofencingRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */