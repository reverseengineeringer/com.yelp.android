package com.google.android.gms.auth;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class c
  implements Parcelable.Creator<AccountChangeEventsRequest>
{
  static void a(AccountChangeEventsRequest paramAccountChangeEventsRequest, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zzc(paramParcel, 2, b);
    zzb.zza(paramParcel, 3, c, false);
    zzb.zza(paramParcel, 4, d, paramInt, false);
    zzb.zzI(paramParcel, i);
  }
  
  public AccountChangeEventsRequest a(Parcel paramParcel)
  {
    Account localAccount = null;
    int j = 0;
    int k = zza.zzau(paramParcel);
    String str = null;
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
        str = zza.zzp(paramParcel, m);
        break;
      case 4: 
        localAccount = (Account)zza.zza(paramParcel, m, Account.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new AccountChangeEventsRequest(i, j, str, localAccount);
  }
  
  public AccountChangeEventsRequest[] a(int paramInt)
  {
    return new AccountChangeEventsRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */