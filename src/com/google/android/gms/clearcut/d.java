package com.google.android.gms.clearcut;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.playlog.internal.PlayLoggerContext;

public class d
  implements Parcelable.Creator<LogEventParcelable>
{
  static void a(LogEventParcelable paramLogEventParcelable, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zza(paramParcel, 2, b, paramInt, false);
    zzb.zza(paramParcel, 3, c, false);
    zzb.zza(paramParcel, 4, d, false);
    zzb.zzI(paramParcel, i);
  }
  
  public LogEventParcelable a(Parcel paramParcel)
  {
    int[] arrayOfInt = null;
    int j = zza.zzau(paramParcel);
    int i = 0;
    Object localObject2 = null;
    Object localObject1 = null;
    if (paramParcel.dataPosition() < j)
    {
      int k = zza.zzat(paramParcel);
      Object localObject3;
      switch (zza.zzca(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        localObject3 = localObject2;
        localObject2 = localObject1;
        localObject1 = localObject3;
      }
      for (;;)
      {
        localObject3 = localObject2;
        localObject2 = localObject1;
        localObject1 = localObject3;
        break;
        i = zza.zzg(paramParcel, k);
        localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
        continue;
        localObject3 = (PlayLoggerContext)zza.zza(paramParcel, k, PlayLoggerContext.CREATOR);
        localObject1 = localObject2;
        localObject2 = localObject3;
        continue;
        localObject3 = zza.zzs(paramParcel, k);
        localObject2 = localObject1;
        localObject1 = localObject3;
        continue;
        arrayOfInt = zza.zzv(paramParcel, k);
        localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new LogEventParcelable(i, (PlayLoggerContext)localObject1, (byte[])localObject2, arrayOfInt);
  }
  
  public LogEventParcelable[] a(int paramInt)
  {
    return new LogEventParcelable[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.clearcut.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */