package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class o
  implements Parcelable.Creator<StreetViewPanoramaLink>
{
  static void a(StreetViewPanoramaLink paramStreetViewPanoramaLink, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, paramStreetViewPanoramaLink.a());
    zzb.zza(paramParcel, 2, a, false);
    zzb.zza(paramParcel, 3, b);
    zzb.zzI(paramParcel, paramInt);
  }
  
  public StreetViewPanoramaLink a(Parcel paramParcel)
  {
    int j = zza.zzau(paramParcel);
    int i = 0;
    String str = null;
    float f = 0.0F;
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
        f = zza.zzl(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new StreetViewPanoramaLink(i, str, f);
  }
  
  public StreetViewPanoramaLink[] a(int paramInt)
  {
    return new StreetViewPanoramaLink[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.o
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */