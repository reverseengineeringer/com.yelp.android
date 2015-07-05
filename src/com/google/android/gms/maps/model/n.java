package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;

public class n
{
  static void a(PolygonOptions paramPolygonOptions, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, paramPolygonOptions.getVersionCode());
    b.c(paramParcel, 2, paramPolygonOptions.getPoints(), false);
    b.d(paramParcel, 3, paramPolygonOptions.of(), false);
    b.a(paramParcel, 4, paramPolygonOptions.getStrokeWidth());
    b.c(paramParcel, 5, paramPolygonOptions.getStrokeColor());
    b.c(paramParcel, 6, paramPolygonOptions.getFillColor());
    b.a(paramParcel, 7, paramPolygonOptions.getZIndex());
    b.a(paramParcel, 8, paramPolygonOptions.isVisible());
    b.a(paramParcel, 9, paramPolygonOptions.isGeodesic());
    b.H(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.n
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */