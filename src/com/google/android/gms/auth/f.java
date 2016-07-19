package com.google.android.gms.auth;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class f
  implements Parcelable.Creator<TokenData>
{
  static void a(TokenData paramTokenData, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zza(paramParcel, 2, paramTokenData.a(), false);
    zzb.zza(paramParcel, 3, paramTokenData.b(), false);
    zzb.zza(paramParcel, 4, paramTokenData.c());
    zzb.zza(paramParcel, 5, paramTokenData.d());
    zzb.zzb(paramParcel, 6, paramTokenData.e(), false);
    zzb.zzI(paramParcel, paramInt);
  }
  
  public TokenData a(Parcel paramParcel)
  {
    ArrayList localArrayList = null;
    boolean bool1 = false;
    int j = zza.zzau(paramParcel);
    boolean bool2 = false;
    Long localLong = null;
    String str = null;
    int i = 0;
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
        str = zza.zzp(paramParcel, k);
        break;
      case 3: 
        localLong = zza.zzj(paramParcel, k);
        break;
      case 4: 
        bool2 = zza.zzc(paramParcel, k);
        break;
      case 5: 
        bool1 = zza.zzc(paramParcel, k);
        break;
      case 6: 
        localArrayList = zza.zzD(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new TokenData(i, str, localLong, bool2, bool1, localArrayList);
  }
  
  public TokenData[] a(int paramInt)
  {
    return new TokenData[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */