package com.google.android.gms.maps;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.CameraPosition;

public class j
  implements Parcelable.Creator<GoogleMapOptions>
{
  static void a(GoogleMapOptions paramGoogleMapOptions, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, paramGoogleMapOptions.a());
    zzb.zza(paramParcel, 2, paramGoogleMapOptions.b());
    zzb.zza(paramParcel, 3, paramGoogleMapOptions.c());
    zzb.zzc(paramParcel, 4, paramGoogleMapOptions.m());
    zzb.zza(paramParcel, 5, paramGoogleMapOptions.n(), paramInt, false);
    zzb.zza(paramParcel, 6, paramGoogleMapOptions.d());
    zzb.zza(paramParcel, 7, paramGoogleMapOptions.e());
    zzb.zza(paramParcel, 8, paramGoogleMapOptions.f());
    zzb.zza(paramParcel, 9, paramGoogleMapOptions.g());
    zzb.zza(paramParcel, 10, paramGoogleMapOptions.h());
    zzb.zza(paramParcel, 11, paramGoogleMapOptions.i());
    zzb.zza(paramParcel, 12, paramGoogleMapOptions.j());
    zzb.zza(paramParcel, 14, paramGoogleMapOptions.k());
    zzb.zza(paramParcel, 15, paramGoogleMapOptions.l());
    zzb.zzI(paramParcel, i);
  }
  
  public GoogleMapOptions a(Parcel paramParcel)
  {
    int k = zza.zzau(paramParcel);
    int j = 0;
    byte b11 = -1;
    byte b10 = -1;
    int i = 0;
    CameraPosition localCameraPosition = null;
    byte b9 = -1;
    byte b8 = -1;
    byte b7 = -1;
    byte b6 = -1;
    byte b5 = -1;
    byte b4 = -1;
    byte b3 = -1;
    byte b2 = -1;
    byte b1 = -1;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzat(paramParcel);
      switch (zza.zzca(m))
      {
      case 13: 
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1: 
        j = zza.zzg(paramParcel, m);
        break;
      case 2: 
        b11 = zza.zze(paramParcel, m);
        break;
      case 3: 
        b10 = zza.zze(paramParcel, m);
        break;
      case 4: 
        i = zza.zzg(paramParcel, m);
        break;
      case 5: 
        localCameraPosition = (CameraPosition)zza.zza(paramParcel, m, CameraPosition.CREATOR);
        break;
      case 6: 
        b9 = zza.zze(paramParcel, m);
        break;
      case 7: 
        b8 = zza.zze(paramParcel, m);
        break;
      case 8: 
        b7 = zza.zze(paramParcel, m);
        break;
      case 9: 
        b6 = zza.zze(paramParcel, m);
        break;
      case 10: 
        b5 = zza.zze(paramParcel, m);
        break;
      case 11: 
        b4 = zza.zze(paramParcel, m);
        break;
      case 12: 
        b3 = zza.zze(paramParcel, m);
        break;
      case 14: 
        b2 = zza.zze(paramParcel, m);
        break;
      case 15: 
        b1 = zza.zze(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new GoogleMapOptions(j, b11, b10, i, localCameraPosition, b9, b8, b7, b6, b5, b4, b3, b2, b1);
  }
  
  public GoogleMapOptions[] a(int paramInt)
  {
    return new GoogleMapOptions[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */