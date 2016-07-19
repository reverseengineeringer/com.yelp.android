package com.google.android.gms.location.places.internal;

import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.ArrayList;

public class a
  implements Parcelable.Creator<PlaceImpl>
{
  static void a(PlaceImpl paramPlaceImpl, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zza(paramParcel, 1, paramPlaceImpl.b(), false);
    zzb.zza(paramParcel, 2, paramPlaceImpl.r(), false);
    zzb.zza(paramParcel, 3, paramPlaceImpl.t(), paramInt, false);
    zzb.zza(paramParcel, 4, paramPlaceImpl.g(), paramInt, false);
    zzb.zza(paramParcel, 5, paramPlaceImpl.h());
    zzb.zza(paramParcel, 6, paramPlaceImpl.i(), paramInt, false);
    zzb.zza(paramParcel, 7, paramPlaceImpl.s(), false);
    zzb.zza(paramParcel, 8, paramPlaceImpl.j(), paramInt, false);
    zzb.zza(paramParcel, 9, paramPlaceImpl.n());
    zzb.zza(paramParcel, 10, paramPlaceImpl.o());
    zzb.zzc(paramParcel, 11, paramPlaceImpl.p());
    zzb.zza(paramParcel, 12, paramPlaceImpl.q());
    zzb.zza(paramParcel, 13, paramPlaceImpl.d(), false);
    zzb.zza(paramParcel, 14, paramPlaceImpl.f(), false);
    zzb.zza(paramParcel, 15, paramPlaceImpl.k(), false);
    zzb.zzb(paramParcel, 17, paramPlaceImpl.m(), false);
    zzb.zza(paramParcel, 16, paramPlaceImpl.l(), false);
    zzb.zzc(paramParcel, 1000, a);
    zzb.zza(paramParcel, 19, paramPlaceImpl.e(), false);
    zzb.zza(paramParcel, 20, paramPlaceImpl.c(), false);
    zzb.zzI(paramParcel, i);
  }
  
  public PlaceImpl a(Parcel paramParcel)
  {
    int k = zza.zzau(paramParcel);
    int j = 0;
    String str6 = null;
    ArrayList localArrayList3 = null;
    ArrayList localArrayList2 = null;
    Bundle localBundle = null;
    String str5 = null;
    String str4 = null;
    String str3 = null;
    String str2 = null;
    ArrayList localArrayList1 = null;
    LatLng localLatLng = null;
    float f2 = 0.0F;
    LatLngBounds localLatLngBounds = null;
    String str1 = null;
    Uri localUri = null;
    boolean bool = false;
    float f1 = 0.0F;
    int i = 0;
    long l = 0L;
    PlaceLocalization localPlaceLocalization = null;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzat(paramParcel);
      switch (zza.zzca(m))
      {
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1: 
        str6 = zza.zzp(paramParcel, m);
        break;
      case 2: 
        localBundle = zza.zzr(paramParcel, m);
        break;
      case 3: 
        localPlaceLocalization = (PlaceLocalization)zza.zza(paramParcel, m, PlaceLocalization.CREATOR);
        break;
      case 4: 
        localLatLng = (LatLng)zza.zza(paramParcel, m, LatLng.CREATOR);
        break;
      case 5: 
        f2 = zza.zzl(paramParcel, m);
        break;
      case 6: 
        localLatLngBounds = (LatLngBounds)zza.zza(paramParcel, m, LatLngBounds.CREATOR);
        break;
      case 7: 
        str1 = zza.zzp(paramParcel, m);
        break;
      case 8: 
        localUri = (Uri)zza.zza(paramParcel, m, Uri.CREATOR);
        break;
      case 9: 
        bool = zza.zzc(paramParcel, m);
        break;
      case 10: 
        f1 = zza.zzl(paramParcel, m);
        break;
      case 11: 
        i = zza.zzg(paramParcel, m);
        break;
      case 12: 
        l = zza.zzi(paramParcel, m);
        break;
      case 13: 
        localArrayList2 = zza.zzC(paramParcel, m);
        break;
      case 14: 
        str4 = zza.zzp(paramParcel, m);
        break;
      case 15: 
        str3 = zza.zzp(paramParcel, m);
        break;
      case 17: 
        localArrayList1 = zza.zzD(paramParcel, m);
        break;
      case 16: 
        str2 = zza.zzp(paramParcel, m);
        break;
      case 1000: 
        j = zza.zzg(paramParcel, m);
        break;
      case 19: 
        str5 = zza.zzp(paramParcel, m);
        break;
      case 20: 
        localArrayList3 = zza.zzC(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new PlaceImpl(j, str6, localArrayList3, localArrayList2, localBundle, str5, str4, str3, str2, localArrayList1, localLatLng, f2, localLatLngBounds, str1, localUri, bool, f1, i, l, localPlaceLocalization);
  }
  
  public PlaceImpl[] a(int paramInt)
  {
    return new PlaceImpl[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */