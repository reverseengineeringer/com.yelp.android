package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.ResolveAccountRequest;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class i
  implements Parcelable.Creator<SignInRequest>
{
  static void a(SignInRequest paramSignInRequest, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zza(paramParcel, 2, paramSignInRequest.a(), paramInt, false);
    zzb.zzI(paramParcel, i);
  }
  
  public SignInRequest a(Parcel paramParcel)
  {
    int j = zza.zzau(paramParcel);
    int i = 0;
    ResolveAccountRequest localResolveAccountRequest = null;
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
        localResolveAccountRequest = (ResolveAccountRequest)zza.zza(paramParcel, k, ResolveAccountRequest.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new SignInRequest(i, localResolveAccountRequest);
  }
  
  public SignInRequest[] a(int paramInt)
  {
    return new SignInRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.i
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */