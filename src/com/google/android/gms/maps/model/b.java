package com.google.android.gms.maps.model;

import android.os.Parcel;

public class b
{
  static void a(CameraPosition paramCameraPosition, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.b.H(paramParcel);
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 1, paramCameraPosition.getVersionCode());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 2, target, paramInt, false);
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 3, zoom);
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 4, tilt);
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 5, bearing);
    com.google.android.gms.common.internal.safeparcel.b.H(paramParcel, i);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */