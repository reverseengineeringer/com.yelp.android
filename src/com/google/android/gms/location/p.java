package com.google.android.gms.location;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class p
  implements Parcelable.Creator<GestureRequest>
{
  static void a(GestureRequest paramGestureRequest, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zza(paramParcel, 1, paramGestureRequest.b(), false);
    zzb.zzc(paramParcel, 1000, paramGestureRequest.a());
    zzb.zzI(paramParcel, paramInt);
  }
  
  public GestureRequest a(Parcel paramParcel)
  {
    int j = zza.zzau(paramParcel);
    int i = 0;
    ArrayList localArrayList = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzat(paramParcel);
      switch (zza.zzca(k))
      {
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        localArrayList = zza.zzC(paramParcel, k);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new GestureRequest(i, localArrayList);
  }
  
  public GestureRequest[] a(int paramInt)
  {
    return new GestureRequest[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.p
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */