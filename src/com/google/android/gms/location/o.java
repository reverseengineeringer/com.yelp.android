package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.location.internal.ParcelableGeofence;
import java.util.ArrayList;

public class o
  implements Parcelable.Creator<GeofencingRequest>
{
  static void a(GeofencingRequest paramGeofencingRequest, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, paramGeofencingRequest.b(), false);
    zzb.zzc(paramParcel, 1000, paramGeofencingRequest.a());
    zzb.zzc(paramParcel, 2, paramGeofencingRequest.c());
    zzb.zzI(paramParcel, paramInt);
  }
  
  public GeofencingRequest a(Parcel paramParcel)
  {
    int j = 0;
    int k = zza.zzau(paramParcel);
    ArrayList localArrayList = null;
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
        localArrayList = zza.zzc(paramParcel, m, ParcelableGeofence.CREATOR);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, m);
        break;
      case 2: 
        j = zza.zzg(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new GeofencingRequest(i, localArrayList, j);
  }
  
  public GeofencingRequest[] a(int paramInt)
  {
    return new GeofencingRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */