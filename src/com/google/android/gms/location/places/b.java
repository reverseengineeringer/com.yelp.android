package com.google.android.gms.location.places;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class b
  implements Parcelable.Creator<AutocompleteFilter>
{
  static void a(AutocompleteFilter paramAutocompleteFilter, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zza(paramParcel, 1, b);
    zzb.zzc(paramParcel, 1000, a);
    zzb.zza(paramParcel, 2, c, false);
    zzb.zzI(paramParcel, paramInt);
  }
  
  public AutocompleteFilter a(Parcel paramParcel)
  {
    boolean bool = false;
    int j = zza.zzau(paramParcel);
    ArrayList localArrayList = null;
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
        bool = zza.zzc(paramParcel, k);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        localArrayList = zza.zzC(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new AutocompleteFilter(i, bool, localArrayList);
  }
  
  public AutocompleteFilter[] a(int paramInt)
  {
    return new AutocompleteFilter[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */