package com.google.android.gms.location.internal;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class c
  implements Parcelable.Creator<ClientIdentity>
{
  static void a(ClientIdentity paramClientIdentity, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zzc(paramParcel, 1000, paramClientIdentity.a());
    zzb.zza(paramParcel, 2, b, false);
    zzb.zzI(paramParcel, paramInt);
  }
  
  public ClientIdentity a(Parcel paramParcel)
  {
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
        j = zza.zzg(paramParcel, m);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, m);
        break;
      case 2: 
        str = zza.zzp(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new ClientIdentity(i, j, str);
  }
  
  public ClientIdentity[] a(int paramInt)
  {
    return new ClientIdentity[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */