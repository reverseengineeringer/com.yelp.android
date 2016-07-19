package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class e
  implements Parcelable.Creator<CameraPosition>
{
  static void a(CameraPosition paramCameraPosition, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, paramCameraPosition.a());
    zzb.zza(paramParcel, 2, a, paramInt, false);
    zzb.zza(paramParcel, 3, b);
    zzb.zza(paramParcel, 4, c);
    zzb.zza(paramParcel, 5, d);
    zzb.zzI(paramParcel, i);
  }
  
  public CameraPosition a(Parcel paramParcel)
  {
    float f1 = 0.0F;
    int j = zza.zzau(paramParcel);
    int i = 0;
    LatLng localLatLng = null;
    float f2 = 0.0F;
    float f3 = 0.0F;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzat(paramParcel);
      switch (zza.zzca(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        localLatLng = (LatLng)zza.zza(paramParcel, k, LatLng.CREATOR);
        break;
      case 3: 
        f3 = zza.zzl(paramParcel, k);
        break;
      case 4: 
        f2 = zza.zzl(paramParcel, k);
        break;
      case 5: 
        f1 = zza.zzl(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new CameraPosition(i, localLatLng, f3, f2, f1);
  }
  
  public CameraPosition[] a(int paramInt)
  {
    return new CameraPosition[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */