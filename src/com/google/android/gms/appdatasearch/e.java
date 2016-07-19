package com.google.android.gms.appdatasearch;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class e
  implements Parcelable.Creator<Feature>
{
  static void a(Feature paramFeature, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, b);
    zzb.zzc(paramParcel, 1000, a);
    zzb.zza(paramParcel, 2, c, false);
    zzb.zzI(paramParcel, paramInt);
  }
  
  public Feature a(Parcel paramParcel)
  {
    int j = 0;
    int k = zza.zzau(paramParcel);
    Bundle localBundle = null;
    int i = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzat(paramParcel);
      switch (zza.zzca(m))
      {
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1: 
        j = zza.zzg(paramParcel, m);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, m);
        break;
      case 2: 
        localBundle = zza.zzr(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new Feature(i, j, localBundle);
  }
  
  public Feature[] a(int paramInt)
  {
    return new Feature[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */