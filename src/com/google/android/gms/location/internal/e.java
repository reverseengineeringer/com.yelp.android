package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class e
  implements Parcelable.Creator<FusedLocationProviderResult>
{
  static void a(FusedLocationProviderResult paramFusedLocationProviderResult, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zza(paramParcel, 1, paramFusedLocationProviderResult.getStatus(), paramInt, false);
    zzb.zzc(paramParcel, 1000, paramFusedLocationProviderResult.a());
    zzb.zzI(paramParcel, i);
  }
  
  public FusedLocationProviderResult a(Parcel paramParcel)
  {
    int j = zza.zzau(paramParcel);
    int i = 0;
    Status localStatus = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzat(paramParcel);
      switch (zza.zzca(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        localStatus = (Status)zza.zza(paramParcel, k, Status.CREATOR);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new FusedLocationProviderResult(i, localStatus);
  }
  
  public FusedLocationProviderResult[] a(int paramInt)
  {
    return new FusedLocationProviderResult[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */