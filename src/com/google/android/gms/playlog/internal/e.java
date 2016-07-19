package com.google.android.gms.playlog.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class e
  implements Parcelable.Creator<PlayLoggerContext>
{
  static void a(PlayLoggerContext paramPlayLoggerContext, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zza(paramParcel, 2, b, false);
    zzb.zzc(paramParcel, 3, c);
    zzb.zzc(paramParcel, 4, d);
    zzb.zza(paramParcel, 5, e, false);
    zzb.zza(paramParcel, 6, f, false);
    zzb.zza(paramParcel, 7, g);
    zzb.zza(paramParcel, 8, h, false);
    zzb.zza(paramParcel, 9, i);
    zzb.zzc(paramParcel, 10, j);
    zzb.zzI(paramParcel, paramInt);
  }
  
  public PlayLoggerContext a(Parcel paramParcel)
  {
    String str1 = null;
    int i = 0;
    int n = zza.zzau(paramParcel);
    boolean bool2 = true;
    boolean bool1 = false;
    String str2 = null;
    String str3 = null;
    int j = 0;
    int k = 0;
    String str4 = null;
    int m = 0;
    while (paramParcel.dataPosition() < n)
    {
      int i1 = zza.zzat(paramParcel);
      switch (zza.zzca(i1))
      {
      default: 
        zza.zzb(paramParcel, i1);
        break;
      case 1: 
        m = zza.zzg(paramParcel, i1);
        break;
      case 2: 
        str4 = zza.zzp(paramParcel, i1);
        break;
      case 3: 
        k = zza.zzg(paramParcel, i1);
        break;
      case 4: 
        j = zza.zzg(paramParcel, i1);
        break;
      case 5: 
        str3 = zza.zzp(paramParcel, i1);
        break;
      case 6: 
        str2 = zza.zzp(paramParcel, i1);
        break;
      case 7: 
        bool2 = zza.zzc(paramParcel, i1);
        break;
      case 8: 
        str1 = zza.zzp(paramParcel, i1);
        break;
      case 9: 
        bool1 = zza.zzc(paramParcel, i1);
        break;
      case 10: 
        i = zza.zzg(paramParcel, i1);
      }
    }
    if (paramParcel.dataPosition() != n) {
      throw new zza.zza("Overread allowed size end=" + n, paramParcel);
    }
    return new PlayLoggerContext(m, str4, k, j, str3, str2, bool2, str1, bool1, i);
  }
  
  public PlayLoggerContext[] a(int paramInt)
  {
    return new PlayLoggerContext[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.playlog.internal.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */