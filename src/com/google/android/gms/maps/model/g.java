package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class g
  implements Parcelable.Creator<GroundOverlayOptions>
{
  static void a(GroundOverlayOptions paramGroundOverlayOptions, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, paramGroundOverlayOptions.b());
    zzb.zza(paramParcel, 2, paramGroundOverlayOptions.a(), false);
    zzb.zza(paramParcel, 3, paramGroundOverlayOptions.c(), paramInt, false);
    zzb.zza(paramParcel, 4, paramGroundOverlayOptions.d());
    zzb.zza(paramParcel, 5, paramGroundOverlayOptions.e());
    zzb.zza(paramParcel, 6, paramGroundOverlayOptions.f(), paramInt, false);
    zzb.zza(paramParcel, 7, paramGroundOverlayOptions.g());
    zzb.zza(paramParcel, 8, paramGroundOverlayOptions.h());
    zzb.zza(paramParcel, 9, paramGroundOverlayOptions.l());
    zzb.zza(paramParcel, 10, paramGroundOverlayOptions.i());
    zzb.zza(paramParcel, 11, paramGroundOverlayOptions.j());
    zzb.zza(paramParcel, 12, paramGroundOverlayOptions.k());
    zzb.zza(paramParcel, 13, paramGroundOverlayOptions.m());
    zzb.zzI(paramParcel, i);
  }
  
  public GroundOverlayOptions a(Parcel paramParcel)
  {
    int j = zza.zzau(paramParcel);
    int i = 0;
    IBinder localIBinder = null;
    LatLng localLatLng = null;
    float f7 = 0.0F;
    float f6 = 0.0F;
    LatLngBounds localLatLngBounds = null;
    float f5 = 0.0F;
    float f4 = 0.0F;
    boolean bool2 = false;
    float f3 = 0.0F;
    float f2 = 0.0F;
    float f1 = 0.0F;
    boolean bool1 = false;
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
        localIBinder = zza.zzq(paramParcel, k);
        break;
      case 3: 
        localLatLng = (LatLng)zza.zza(paramParcel, k, LatLng.CREATOR);
        break;
      case 4: 
        f7 = zza.zzl(paramParcel, k);
        break;
      case 5: 
        f6 = zza.zzl(paramParcel, k);
        break;
      case 6: 
        localLatLngBounds = (LatLngBounds)zza.zza(paramParcel, k, LatLngBounds.CREATOR);
        break;
      case 7: 
        f5 = zza.zzl(paramParcel, k);
        break;
      case 8: 
        f4 = zza.zzl(paramParcel, k);
        break;
      case 9: 
        bool2 = zza.zzc(paramParcel, k);
        break;
      case 10: 
        f3 = zza.zzl(paramParcel, k);
        break;
      case 11: 
        f2 = zza.zzl(paramParcel, k);
        break;
      case 12: 
        f1 = zza.zzl(paramParcel, k);
        break;
      case 13: 
        bool1 = zza.zzc(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new GroundOverlayOptions(i, localIBinder, localLatLng, f7, f6, localLatLngBounds, f5, f4, bool2, f3, f2, f1, bool1);
  }
  
  public GroundOverlayOptions[] a(int paramInt)
  {
    return new GroundOverlayOptions[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */