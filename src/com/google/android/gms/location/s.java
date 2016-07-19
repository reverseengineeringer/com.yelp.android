package com.google.android.gms.location;

import android.location.Location;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public class s
  implements Parcelable.Creator<LocationResult>
{
  static void a(LocationResult paramLocationResult, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, paramLocationResult.b(), false);
    zzb.zzc(paramParcel, 1000, paramLocationResult.c());
    zzb.zzI(paramParcel, paramInt);
  }
  
  public LocationResult a(Parcel paramParcel)
  {
    int j = zza.zzau(paramParcel);
    int i = 0;
    Object localObject = LocationResult.a;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzat(paramParcel);
      switch (zza.zzca(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        localObject = zza.zzc(paramParcel, k, Location.CREATOR);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new LocationResult(i, (List)localObject);
  }
  
  public LocationResult[] a(int paramInt)
  {
    return new LocationResult[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.s
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */