package com.google.android.gms.appdatasearch;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class f
  implements Parcelable.Creator<GetRecentContextCall.Request>
{
  static void a(GetRecentContextCall.Request paramRequest, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zza(paramParcel, 1, b, paramInt, false);
    zzb.zzc(paramParcel, 1000, a);
    zzb.zza(paramParcel, 2, c);
    zzb.zza(paramParcel, 3, d);
    zzb.zza(paramParcel, 4, e);
    zzb.zza(paramParcel, 5, f, false);
    zzb.zzI(paramParcel, i);
  }
  
  public GetRecentContextCall.Request a(Parcel paramParcel)
  {
    String str = null;
    boolean bool1 = false;
    int j = zza.zzau(paramParcel);
    boolean bool2 = false;
    boolean bool3 = false;
    Account localAccount = null;
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
        localAccount = (Account)zza.zza(paramParcel, k, Account.CREATOR);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        bool3 = zza.zzc(paramParcel, k);
        break;
      case 3: 
        bool2 = zza.zzc(paramParcel, k);
        break;
      case 4: 
        bool1 = zza.zzc(paramParcel, k);
        break;
      case 5: 
        str = zza.zzp(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new GetRecentContextCall.Request(i, localAccount, bool3, bool2, bool1, str);
  }
  
  public GetRecentContextCall.Request[] a(int paramInt)
  {
    return new GetRecentContextCall.Request[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.f
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */