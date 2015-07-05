package com.google.android.gms.maps;

import android.os.Parcel;

public class b
{
  static void a(GoogleMapOptions paramGoogleMapOptions, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.b.H(paramParcel);
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 1, paramGoogleMapOptions.getVersionCode());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 2, paramGoogleMapOptions.nD());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 3, paramGoogleMapOptions.nE());
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 4, paramGoogleMapOptions.getMapType());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 5, paramGoogleMapOptions.getCamera(), paramInt, false);
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 6, paramGoogleMapOptions.nF());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 7, paramGoogleMapOptions.nG());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 8, paramGoogleMapOptions.nH());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 9, paramGoogleMapOptions.nI());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 10, paramGoogleMapOptions.nJ());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 11, paramGoogleMapOptions.nK());
    com.google.android.gms.common.internal.safeparcel.b.H(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */