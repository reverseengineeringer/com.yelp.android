package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.b;

public class v
{
  static void a(Tile paramTile, Parcel paramParcel, int paramInt)
  {
    paramInt = b.H(paramParcel);
    b.c(paramParcel, 1, paramTile.getVersionCode());
    b.c(paramParcel, 2, width);
    b.c(paramParcel, 3, height);
    b.a(paramParcel, 4, data, false);
    b.H(paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */