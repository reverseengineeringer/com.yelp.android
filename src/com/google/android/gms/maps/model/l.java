package com.google.android.gms.maps.model;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class l
  implements Parcelable.Creator<PolygonOptions>
{
  static void a(PolygonOptions paramPolygonOptions, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, paramPolygonOptions.a());
    zzb.zzc(paramParcel, 2, paramPolygonOptions.c(), false);
    zzb.zzd(paramParcel, 3, paramPolygonOptions.b(), false);
    zzb.zza(paramParcel, 4, paramPolygonOptions.d());
    zzb.zzc(paramParcel, 5, paramPolygonOptions.e());
    zzb.zzc(paramParcel, 6, paramPolygonOptions.f());
    zzb.zza(paramParcel, 7, paramPolygonOptions.g());
    zzb.zza(paramParcel, 8, paramPolygonOptions.h());
    zzb.zza(paramParcel, 9, paramPolygonOptions.i());
    zzb.zza(paramParcel, 10, paramPolygonOptions.j());
    zzb.zzI(paramParcel, paramInt);
  }
  
  public PolygonOptions a(Parcel paramParcel)
  {
    float f1 = 0.0F;
    boolean bool1 = false;
    int m = zza.zzau(paramParcel);
    ArrayList localArrayList1 = null;
    ArrayList localArrayList2 = new ArrayList();
    boolean bool2 = false;
    boolean bool3 = false;
    int i = 0;
    int j = 0;
    float f2 = 0.0F;
    int k = 0;
    while (paramParcel.dataPosition() < m)
    {
      int n = zza.zzat(paramParcel);
      switch (zza.zzca(n))
      {
      default: 
        zza.zzb(paramParcel, n);
        break;
      case 1: 
        k = zza.zzg(paramParcel, n);
        break;
      case 2: 
        localArrayList1 = zza.zzc(paramParcel, n, LatLng.CREATOR);
        break;
      case 3: 
        zza.zza(paramParcel, n, localArrayList2, getClass().getClassLoader());
        break;
      case 4: 
        f2 = zza.zzl(paramParcel, n);
        break;
      case 5: 
        j = zza.zzg(paramParcel, n);
        break;
      case 6: 
        i = zza.zzg(paramParcel, n);
        break;
      case 7: 
        f1 = zza.zzl(paramParcel, n);
        break;
      case 8: 
        bool3 = zza.zzc(paramParcel, n);
        break;
      case 9: 
        bool2 = zza.zzc(paramParcel, n);
        break;
      case 10: 
        bool1 = zza.zzc(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new PolygonOptions(k, localArrayList1, localArrayList2, f2, j, i, f1, bool3, bool2, bool1);
  }
  
  public PolygonOptions[] a(int paramInt)
  {
    return new PolygonOptions[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */