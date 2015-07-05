package com.google.android.gms.maps.model.internal;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a.a;

public class b
  implements Parcelable.Creator<a>
{
  static void a(a parama, Parcel paramParcel, int paramInt)
  {
    int i = com.google.android.gms.common.internal.safeparcel.b.H(paramParcel);
    com.google.android.gms.common.internal.safeparcel.b.c(paramParcel, 1, parama.getVersionCode());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 2, parama.oh());
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 3, parama.oi(), false);
    com.google.android.gms.common.internal.safeparcel.b.a(paramParcel, 4, parama.getBitmap(), paramInt, false);
    com.google.android.gms.common.internal.safeparcel.b.H(paramParcel, i);
  }
  
  public a dp(Parcel paramParcel)
  {
    Bitmap localBitmap = null;
    byte b = 0;
    int j = com.google.android.gms.common.internal.safeparcel.a.G(paramParcel);
    Bundle localBundle = null;
    int i = 0;
    while (paramParcel.dataPosition() < j)
    {
      int k = com.google.android.gms.common.internal.safeparcel.a.F(paramParcel);
      switch (com.google.android.gms.common.internal.safeparcel.a.aH(k))
      {
      default: 
        com.google.android.gms.common.internal.safeparcel.a.b(paramParcel, k);
        break;
      case 1: 
        i = com.google.android.gms.common.internal.safeparcel.a.g(paramParcel, k);
        break;
      case 2: 
        b = com.google.android.gms.common.internal.safeparcel.a.e(paramParcel, k);
        break;
      case 3: 
        localBundle = com.google.android.gms.common.internal.safeparcel.a.q(paramParcel, k);
        break;
      case 4: 
        localBitmap = (Bitmap)com.google.android.gms.common.internal.safeparcel.a.a(paramParcel, k, Bitmap.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new a(i, b, localBundle, localBitmap);
  }
  
  public a[] fl(int paramInt)
  {
    return new a[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */