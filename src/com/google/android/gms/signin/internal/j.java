package com.google.android.gms.signin.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.ResolveAccountResponse;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class j
  implements Parcelable.Creator<SignInResponse>
{
  static void a(SignInResponse paramSignInResponse, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zza(paramParcel, 2, paramSignInResponse.a(), paramInt, false);
    zzb.zza(paramParcel, 3, paramSignInResponse.b(), paramInt, false);
    zzb.zzI(paramParcel, i);
  }
  
  public SignInResponse a(Parcel paramParcel)
  {
    ResolveAccountResponse localResolveAccountResponse = null;
    int j = zza.zzau(paramParcel);
    int i = 0;
    ConnectionResult localConnectionResult = null;
    if (paramParcel.dataPosition() < j)
    {
      int k = zza.zzat(paramParcel);
      switch (zza.zzca(k))
      {
      default: 
        zza.zzb(paramParcel, k);
      }
      for (;;)
      {
        break;
        i = zza.zzg(paramParcel, k);
        continue;
        localConnectionResult = (ConnectionResult)zza.zza(paramParcel, k, ConnectionResult.CREATOR);
        continue;
        localResolveAccountResponse = (ResolveAccountResponse)zza.zza(paramParcel, k, ResolveAccountResponse.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new SignInResponse(i, localConnectionResult, localResolveAccountResponse);
  }
  
  public SignInResponse[] a(int paramInt)
  {
    return new SignInResponse[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.signin.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */