package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class v
  implements Parcelable.Creator<LocationSettingsStates>
{
  static void a(LocationSettingsStates paramLocationSettingsStates, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zza(paramParcel, 1, paramLocationSettingsStates.b());
    zzb.zzc(paramParcel, 1000, paramLocationSettingsStates.a());
    zzb.zza(paramParcel, 2, paramLocationSettingsStates.d());
    zzb.zza(paramParcel, 3, paramLocationSettingsStates.f());
    zzb.zza(paramParcel, 4, paramLocationSettingsStates.c());
    zzb.zza(paramParcel, 5, paramLocationSettingsStates.e());
    zzb.zza(paramParcel, 6, paramLocationSettingsStates.g());
    zzb.zzI(paramParcel, paramInt);
  }
  
  public LocationSettingsStates a(Parcel paramParcel)
  {
    boolean bool1 = false;
    int j = zza.zzau(paramParcel);
    boolean bool2 = false;
    boolean bool3 = false;
    boolean bool4 = false;
    boolean bool5 = false;
    boolean bool6 = false;
    int i = 0;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzat(paramParcel);
      switch (zza.zzca(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        bool6 = zza.zzc(paramParcel, k);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        bool5 = zza.zzc(paramParcel, k);
        break;
      case 3: 
        bool4 = zza.zzc(paramParcel, k);
        break;
      case 4: 
        bool3 = zza.zzc(paramParcel, k);
        break;
      case 5: 
        bool2 = zza.zzc(paramParcel, k);
        break;
      case 6: 
        bool1 = zza.zzc(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new LocationSettingsStates(i, bool6, bool5, bool4, bool3, bool2, bool1);
  }
  
  public LocationSettingsStates[] a(int paramInt)
  {
    return new LocationSettingsStates[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.v
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */