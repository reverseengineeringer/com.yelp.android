package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class t
  implements Parcelable.Creator<EventParams>
{
  static void a(EventParams paramEventParams, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zza(paramParcel, 2, paramEventParams.b(), false);
    zzb.zzI(paramParcel, paramInt);
  }
  
  public EventParams a(Parcel paramParcel)
  {
    int j = zza.zzau(paramParcel);
    int i = 0;
    Bundle localBundle = null;
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
        localBundle = zza.zzr(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new EventParams(i, localBundle);
  }
  
  public EventParams[] a(int paramInt)
  {
    return new EventParams[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.measurement.internal.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */