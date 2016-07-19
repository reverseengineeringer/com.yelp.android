package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class r
  implements Parcelable.Creator<AdSizeParcel>
{
  static void a(AdSizeParcel paramAdSizeParcel, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zza(paramParcel, 2, b, false);
    zzb.zzc(paramParcel, 3, c);
    zzb.zzc(paramParcel, 4, d);
    zzb.zza(paramParcel, 5, e);
    zzb.zzc(paramParcel, 6, f);
    zzb.zzc(paramParcel, 7, g);
    zzb.zza(paramParcel, 8, h, paramInt, false);
    zzb.zza(paramParcel, 9, paramAdSizeParcel.i);
    zzb.zza(paramParcel, 10, j);
    zzb.zza(paramParcel, 11, k);
    zzb.zzI(paramParcel, i);
  }
  
  public AdSizeParcel a(Parcel paramParcel)
  {
    AdSizeParcel[] arrayOfAdSizeParcel = null;
    boolean bool1 = false;
    int i1 = zza.zzau(paramParcel);
    boolean bool2 = false;
    boolean bool3 = false;
    int i = 0;
    int j = 0;
    boolean bool4 = false;
    int k = 0;
    int m = 0;
    String str = null;
    int n = 0;
    while (paramParcel.dataPosition() < i1)
    {
      int i2 = zza.zzat(paramParcel);
      switch (zza.zzca(i2))
      {
      default: 
        zza.zzb(paramParcel, i2);
        break;
      case 1: 
        n = zza.zzg(paramParcel, i2);
        break;
      case 2: 
        str = zza.zzp(paramParcel, i2);
        break;
      case 3: 
        m = zza.zzg(paramParcel, i2);
        break;
      case 4: 
        k = zza.zzg(paramParcel, i2);
        break;
      case 5: 
        bool4 = zza.zzc(paramParcel, i2);
        break;
      case 6: 
        j = zza.zzg(paramParcel, i2);
        break;
      case 7: 
        i = zza.zzg(paramParcel, i2);
        break;
      case 8: 
        arrayOfAdSizeParcel = (AdSizeParcel[])zza.zzb(paramParcel, i2, AdSizeParcel.CREATOR);
        break;
      case 9: 
        bool3 = zza.zzc(paramParcel, i2);
        break;
      case 10: 
        bool2 = zza.zzc(paramParcel, i2);
        break;
      case 11: 
        bool1 = zza.zzc(paramParcel, i2);
      }
    }
    if (paramParcel.dataPosition() != i1) {
      throw new zza.zza("Overread allowed size end=" + i1, paramParcel);
    }
    return new AdSizeParcel(n, str, m, k, bool4, j, i, arrayOfAdSizeParcel, bool3, bool2, bool1);
  }
  
  public AdSizeParcel[] a(int paramInt)
  {
    return new AdSizeParcel[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.r
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */