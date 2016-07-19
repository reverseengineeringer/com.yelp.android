package com.google.android.gms.location;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class c
  implements Parcelable.Creator<ActivityRecognitionResult>
{
  static void a(ActivityRecognitionResult paramActivityRecognitionResult, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a, false);
    zzb.zzc(paramParcel, 1000, paramActivityRecognitionResult.b());
    zzb.zza(paramParcel, 2, b);
    zzb.zza(paramParcel, 3, c);
    zzb.zzc(paramParcel, 4, d);
    zzb.zza(paramParcel, 5, e, false);
    zzb.zzI(paramParcel, paramInt);
  }
  
  public ActivityRecognitionResult a(Parcel paramParcel)
  {
    long l1 = 0L;
    Bundle localBundle = null;
    int i = 0;
    int k = zza.zzau(paramParcel);
    long l2 = 0L;
    ArrayList localArrayList = null;
    int j = 0;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzat(paramParcel);
      switch (zza.zzca(m))
      {
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1: 
        localArrayList = zza.zzc(paramParcel, m, DetectedActivity.CREATOR);
        break;
      case 1000: 
        j = zza.zzg(paramParcel, m);
        break;
      case 2: 
        l2 = zza.zzi(paramParcel, m);
        break;
      case 3: 
        l1 = zza.zzi(paramParcel, m);
        break;
      case 4: 
        i = zza.zzg(paramParcel, m);
        break;
      case 5: 
        localBundle = zza.zzr(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new ActivityRecognitionResult(j, localArrayList, l2, l1, i, localBundle);
  }
  
  public ActivityRecognitionResult[] a(int paramInt)
  {
    return new ActivityRecognitionResult[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */