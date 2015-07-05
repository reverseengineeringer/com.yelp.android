package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;
import com.google.android.gms.maps.model.CameraPosition;

public class a
  implements Parcelable.Creator<GoogleMapOptions>
{
  static void a(GoogleMapOptions paramGoogleMapOptions, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, paramGoogleMapOptions.getVersionCode());
    b.a(paramParcel, 2, paramGoogleMapOptions.nD());
    b.a(paramParcel, 3, paramGoogleMapOptions.nE());
    b.c(paramParcel, 4, paramGoogleMapOptions.getMapType());
    b.a(paramParcel, 5, paramGoogleMapOptions.getCamera(), paramInt, false);
    b.a(paramParcel, 6, paramGoogleMapOptions.nF());
    b.a(paramParcel, 7, paramGoogleMapOptions.nG());
    b.a(paramParcel, 8, paramGoogleMapOptions.nH());
    b.a(paramParcel, 9, paramGoogleMapOptions.nI());
    b.a(paramParcel, 10, paramGoogleMapOptions.nJ());
    b.a(paramParcel, 11, paramGoogleMapOptions.nK());
    b.a(paramParcel, 12, paramGoogleMapOptions.nL());
    b.a(paramParcel, 14, paramGoogleMapOptions.nM());
    b.H(paramParcel, i);
  }
  
  public GoogleMapOptions cX(Parcel paramParcel)
  {
    int k = com.google.android.gms.common.internal.safeparcel.a.G(paramParcel);
    int j = 0;
    byte b10 = 0;
    byte b9 = 0;
    int i = 0;
    CameraPosition localCameraPosition = null;
    byte b8 = 0;
    byte b7 = 0;
    byte b6 = 0;
    byte b5 = 0;
    byte b4 = 0;
    byte b3 = 0;
    byte b2 = 0;
    byte b1 = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = com.google.android.gms.common.internal.safeparcel.a.F(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.a.aH(m))
      {
      case 13: 
      default: 
        com.google.android.gms.common.internal.safeparcel.a.b(paramParcel, m);
        break;
      case 1: 
        j = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, m);
        break;
      case 2: 
        b10 = com.google.android.gms.common.internal.safeparcel.a.e(paramParcel, m);
        break;
      case 3: 
        b9 = com.google.android.gms.common.internal.safeparcel.a.e(paramParcel, m);
        break;
      case 4: 
        i = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, m);
        break;
      case 5: 
        localCameraPosition = (CameraPosition)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, m, CameraPosition.CREATOR);
        break;
      case 6: 
        b8 = com.google.android.gms.common.internal.safeparcel.a.e(paramParcel, m);
        break;
      case 7: 
        b7 = com.google.android.gms.common.internal.safeparcel.a.e(paramParcel, m);
        break;
      case 8: 
        b6 = com.google.android.gms.common.internal.safeparcel.a.e(paramParcel, m);
        break;
      case 9: 
        b5 = com.google.android.gms.common.internal.safeparcel.a.e(paramParcel, m);
        break;
      case 10: 
        b4 = com.google.android.gms.common.internal.safeparcel.a.e(paramParcel, m);
        break;
      case 11: 
        b3 = com.google.android.gms.common.internal.safeparcel.a.e(paramParcel, m);
        break;
      case 12: 
        b2 = com.google.android.gms.common.internal.safeparcel.a.e(paramParcel, m);
        break;
      case 14: 
        b1 = com.google.android.gms.common.internal.safeparcel.a.e(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new a.a("Overread allowed size end=" + k, paramParcel);
    }
    return new GoogleMapOptions(j, b10, b9, i, localCameraPosition, b8, b7, b6, b5, b4, b3, b2, b1);
  }
  
  public GoogleMapOptions[] eT(int paramInt)
  {
    return new GoogleMapOptions[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */