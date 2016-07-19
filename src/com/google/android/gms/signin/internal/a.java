package com.google.android.gms.signin.internal;

import android.content.Intent;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class a
  implements Parcelable.Creator<AuthAccountResult>
{
  static void a(AuthAccountResult paramAuthAccountResult, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zzc(paramParcel, 2, paramAuthAccountResult.a());
    zzb.zza(paramParcel, 3, paramAuthAccountResult.b(), paramInt, false);
    zzb.zzI(paramParcel, i);
  }
  
  public AuthAccountResult a(Parcel paramParcel)
  {
    int j = 0;
    int k = zza.zzau(paramParcel);
    Intent localIntent = null;
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
        i = zza.zzg(paramParcel, m);
        break;
      case 2: 
        j = zza.zzg(paramParcel, m);
        break;
      case 3: 
        localIntent = (Intent)zza.zza(paramParcel, m, Intent.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new AuthAccountResult(i, j, localIntent);
  }
  
  public AuthAccountResult[] a(int paramInt)
  {
    return new AuthAccountResult[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */