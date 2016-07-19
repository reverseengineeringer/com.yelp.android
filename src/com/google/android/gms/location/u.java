package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class u
  implements Parcelable.Creator<LocationSettingsResult>
{
  static void a(LocationSettingsResult paramLocationSettingsResult, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zza(paramParcel, 1, paramLocationSettingsResult.getStatus(), paramInt, false);
    zzb.zzc(paramParcel, 1000, paramLocationSettingsResult.a());
    zzb.zza(paramParcel, 2, paramLocationSettingsResult.b(), paramInt, false);
    zzb.zzI(paramParcel, i);
  }
  
  public LocationSettingsResult a(Parcel paramParcel)
  {
    LocationSettingsStates localLocationSettingsStates = null;
    int j = zza.zzau(paramParcel);
    int i = 0;
    Status localStatus = null;
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
        localStatus = (Status)zza.zza(paramParcel, k, Status.CREATOR);
        continue;
        i = zza.zzg(paramParcel, k);
        continue;
        localLocationSettingsStates = (LocationSettingsStates)zza.zza(paramParcel, k, LocationSettingsStates.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new LocationSettingsResult(i, localStatus, localLocationSettingsStates);
  }
  
  public LocationSettingsResult[] a(int paramInt)
  {
    return new LocationSettingsResult[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.u
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */