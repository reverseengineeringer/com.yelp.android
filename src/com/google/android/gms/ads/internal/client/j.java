package com.google.android.gms.ads.internal.client;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class j
  implements Parcelable.Creator<SearchAdRequestParcel>
{
  static void a(SearchAdRequestParcel paramSearchAdRequestParcel, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zzc(paramParcel, 2, b);
    zzb.zzc(paramParcel, 3, c);
    zzb.zzc(paramParcel, 4, d);
    zzb.zzc(paramParcel, 5, e);
    zzb.zzc(paramParcel, 6, f);
    zzb.zzc(paramParcel, 7, g);
    zzb.zzc(paramParcel, 8, h);
    zzb.zzc(paramParcel, 9, i);
    zzb.zza(paramParcel, 10, j, false);
    zzb.zzc(paramParcel, 11, k);
    zzb.zza(paramParcel, 12, l, false);
    zzb.zzc(paramParcel, 13, m);
    zzb.zzc(paramParcel, 14, n);
    zzb.zza(paramParcel, 15, o, false);
    zzb.zzI(paramParcel, paramInt);
  }
  
  public SearchAdRequestParcel a(Parcel paramParcel)
  {
    int i8 = zza.zzau(paramParcel);
    int i7 = 0;
    int i6 = 0;
    int i5 = 0;
    int i4 = 0;
    int i3 = 0;
    int i2 = 0;
    int i1 = 0;
    int n = 0;
    int m = 0;
    String str3 = null;
    int k = 0;
    String str2 = null;
    int j = 0;
    int i = 0;
    String str1 = null;
    while (paramParcel.dataPosition() < i8)
    {
      int i9 = zza.zzat(paramParcel);
      switch (zza.zzca(i9))
      {
      default: 
        zza.zzb(paramParcel, i9);
        break;
      case 1: 
        i7 = zza.zzg(paramParcel, i9);
        break;
      case 2: 
        i6 = zza.zzg(paramParcel, i9);
        break;
      case 3: 
        i5 = zza.zzg(paramParcel, i9);
        break;
      case 4: 
        i4 = zza.zzg(paramParcel, i9);
        break;
      case 5: 
        i3 = zza.zzg(paramParcel, i9);
        break;
      case 6: 
        i2 = zza.zzg(paramParcel, i9);
        break;
      case 7: 
        i1 = zza.zzg(paramParcel, i9);
        break;
      case 8: 
        n = zza.zzg(paramParcel, i9);
        break;
      case 9: 
        m = zza.zzg(paramParcel, i9);
        break;
      case 10: 
        str3 = zza.zzp(paramParcel, i9);
        break;
      case 11: 
        k = zza.zzg(paramParcel, i9);
        break;
      case 12: 
        str2 = zza.zzp(paramParcel, i9);
        break;
      case 13: 
        j = zza.zzg(paramParcel, i9);
        break;
      case 14: 
        i = zza.zzg(paramParcel, i9);
        break;
      case 15: 
        str1 = zza.zzp(paramParcel, i9);
      }
    }
    if (paramParcel.dataPosition() != i8) {
      throw new zza.zza("Overread allowed size end=" + i8, paramParcel);
    }
    return new SearchAdRequestParcel(i7, i6, i5, i4, i3, i2, i1, n, m, str3, k, str2, j, i, str1);
  }
  
  public SearchAdRequestParcel[] a(int paramInt)
  {
    return new SearchAdRequestParcel[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */