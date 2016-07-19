package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.List;

public class g
  implements Parcelable.Creator<GetRecentContextCall.Response>
{
  static void a(GetRecentContextCall.Response paramResponse, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1000, d);
    zzb.zza(paramParcel, 1, a, paramInt, false);
    zzb.zzc(paramParcel, 2, b, false);
    zzb.zza(paramParcel, 3, c, false);
    zzb.zzI(paramParcel, i);
  }
  
  public GetRecentContextCall.Response a(Parcel paramParcel)
  {
    String[] arrayOfString = null;
    int j = zza.zzau(paramParcel);
    int i = 0;
    Object localObject2 = null;
    Object localObject1 = null;
    if (paramParcel.dataPosition() < j)
    {
      int k = zza.zzat(paramParcel);
      Object localObject3;
      switch (zza.zzca(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        localObject3 = localObject2;
        localObject2 = localObject1;
        localObject1 = localObject3;
      }
      for (;;)
      {
        localObject3 = localObject2;
        localObject2 = localObject1;
        localObject1 = localObject3;
        break;
        i = zza.zzg(paramParcel, k);
        localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
        continue;
        localObject3 = (Status)zza.zza(paramParcel, k, Status.CREATOR);
        localObject1 = localObject2;
        localObject2 = localObject3;
        continue;
        localObject3 = zza.zzc(paramParcel, k, UsageInfo.CREATOR);
        localObject2 = localObject1;
        localObject1 = localObject3;
        continue;
        arrayOfString = zza.zzB(paramParcel, k);
        localObject3 = localObject1;
        localObject1 = localObject2;
        localObject2 = localObject3;
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new GetRecentContextCall.Response(i, (Status)localObject1, (List)localObject2, arrayOfString);
  }
  
  public GetRecentContextCall.Response[] a(int paramInt)
  {
    return new GetRecentContextCall.Response[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */