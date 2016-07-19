package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class h
  implements Parcelable.Creator<LatLngBounds>
{
  static void a(LatLngBounds paramLatLngBounds, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, paramLatLngBounds.a());
    zzb.zza(paramParcel, 2, a, paramInt, false);
    zzb.zza(paramParcel, 3, b, paramInt, false);
    zzb.zzI(paramParcel, i);
  }
  
  public LatLngBounds a(Parcel paramParcel)
  {
    LatLng localLatLng1 = null;
    int j = zza.zzau(paramParcel);
    int i = 0;
    LatLng localLatLng2 = null;
    if (paramParcel.dataPosition() < j)
    {
      int k = zza.zzat(paramParcel);
      switch (zza.zzca(k))
      {
      default: 
        zza.zzb(paramParcel, k);
      }
      for (;;)
      {
        break;
        i = zza.zzg(paramParcel, k);
        continue;
        localLatLng2 = (LatLng)zza.zza(paramParcel, k, LatLng.CREATOR);
        continue;
        localLatLng1 = (LatLng)zza.zza(paramParcel, k, LatLng.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new LatLngBounds(i, localLatLng2, localLatLng1);
  }
  
  public LatLngBounds[] a(int paramInt)
  {
    return new LatLngBounds[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.h
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */