package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;

public class x
{
  static void a(TileOverlayOptions paramTileOverlayOptions, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, paramTileOverlayOptions.getVersionCode());
    b.a(paramParcel, 2, paramTileOverlayOptions.og(), false);
    b.a(paramParcel, 3, paramTileOverlayOptions.isVisible());
    b.a(paramParcel, 4, paramTileOverlayOptions.getZIndex());
    b.H(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.x
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */