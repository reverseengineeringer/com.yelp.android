package com.google.android.gms.ads.internal.request;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class e
  implements Parcelable.Creator<AdRequestInfoParcel>
{
  static void a(AdRequestInfoParcel paramAdRequestInfoParcel, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zza(paramParcel, 2, b, false);
    zzb.zza(paramParcel, 3, c, paramInt, false);
    zzb.zza(paramParcel, 4, d, paramInt, false);
    zzb.zza(paramParcel, 5, e, false);
    zzb.zza(paramParcel, 6, f, paramInt, false);
    zzb.zza(paramParcel, 7, g, paramInt, false);
    zzb.zza(paramParcel, 8, h, false);
    zzb.zza(paramParcel, 9, paramAdRequestInfoParcel.i, false);
    zzb.zza(paramParcel, 10, j, false);
    zzb.zza(paramParcel, 11, k, paramInt, false);
    zzb.zza(paramParcel, 12, l, false);
    zzb.zzc(paramParcel, 13, m);
    zzb.zzb(paramParcel, 14, n, false);
    zzb.zza(paramParcel, 15, o, false);
    zzb.zza(paramParcel, 17, q, paramInt, false);
    zzb.zza(paramParcel, 16, p);
    zzb.zzc(paramParcel, 19, s);
    zzb.zzc(paramParcel, 18, r);
    zzb.zza(paramParcel, 21, u, false);
    zzb.zza(paramParcel, 20, t);
    zzb.zza(paramParcel, 25, v);
    zzb.zzb(paramParcel, 27, x, false);
    zzb.zza(paramParcel, 26, w, false);
    zzb.zza(paramParcel, 29, z, paramInt, false);
    zzb.zza(paramParcel, 28, y, false);
    zzb.zza(paramParcel, 31, B);
    zzb.zzb(paramParcel, 30, A, false);
    zzb.zza(paramParcel, 34, E);
    zzb.zzc(paramParcel, 35, F);
    zzb.zza(paramParcel, 32, C, paramInt, false);
    zzb.zza(paramParcel, 33, D, false);
    zzb.zzc(paramParcel, 36, G);
    zzb.zzI(paramParcel, i);
  }
  
  public AdRequestInfoParcel a(Parcel paramParcel)
  {
    int i2 = zza.zzau(paramParcel);
    int i1 = 0;
    Bundle localBundle3 = null;
    AdRequestParcel localAdRequestParcel = null;
    AdSizeParcel localAdSizeParcel = null;
    String str8 = null;
    ApplicationInfo localApplicationInfo = null;
    PackageInfo localPackageInfo = null;
    String str7 = null;
    String str6 = null;
    String str5 = null;
    VersionInfoParcel localVersionInfoParcel = null;
    Bundle localBundle2 = null;
    int n = 0;
    ArrayList localArrayList3 = null;
    Bundle localBundle1 = null;
    boolean bool = false;
    Messenger localMessenger = null;
    int m = 0;
    int k = 0;
    float f2 = 0.0F;
    String str4 = null;
    long l2 = 0L;
    String str3 = null;
    ArrayList localArrayList2 = null;
    String str2 = null;
    NativeAdOptionsParcel localNativeAdOptionsParcel = null;
    ArrayList localArrayList1 = null;
    long l1 = 0L;
    CapabilityParcel localCapabilityParcel = null;
    String str1 = null;
    float f1 = 0.0F;
    int j = 0;
    int i = 0;
    while (paramParcel.dataPosition() < i2)
    {
      int i3 = zza.zzat(paramParcel);
      switch (zza.zzca(i3))
      {
      case 22: 
      case 23: 
      case 24: 
      default: 
        zza.zzb(paramParcel, i3);
        break;
      case 1: 
        i1 = zza.zzg(paramParcel, i3);
        break;
      case 2: 
        localBundle3 = zza.zzr(paramParcel, i3);
        break;
      case 3: 
        localAdRequestParcel = (AdRequestParcel)zza.zza(paramParcel, i3, AdRequestParcel.CREATOR);
        break;
      case 4: 
        localAdSizeParcel = (AdSizeParcel)zza.zza(paramParcel, i3, AdSizeParcel.CREATOR);
        break;
      case 5: 
        str8 = zza.zzp(paramParcel, i3);
        break;
      case 6: 
        localApplicationInfo = (ApplicationInfo)zza.zza(paramParcel, i3, ApplicationInfo.CREATOR);
        break;
      case 7: 
        localPackageInfo = (PackageInfo)zza.zza(paramParcel, i3, PackageInfo.CREATOR);
        break;
      case 8: 
        str7 = zza.zzp(paramParcel, i3);
        break;
      case 9: 
        str6 = zza.zzp(paramParcel, i3);
        break;
      case 10: 
        str5 = zza.zzp(paramParcel, i3);
        break;
      case 11: 
        localVersionInfoParcel = (VersionInfoParcel)zza.zza(paramParcel, i3, VersionInfoParcel.CREATOR);
        break;
      case 12: 
        localBundle2 = zza.zzr(paramParcel, i3);
        break;
      case 13: 
        n = zza.zzg(paramParcel, i3);
        break;
      case 14: 
        localArrayList3 = zza.zzD(paramParcel, i3);
        break;
      case 15: 
        localBundle1 = zza.zzr(paramParcel, i3);
        break;
      case 17: 
        localMessenger = (Messenger)zza.zza(paramParcel, i3, Messenger.CREATOR);
        break;
      case 16: 
        bool = zza.zzc(paramParcel, i3);
        break;
      case 19: 
        k = zza.zzg(paramParcel, i3);
        break;
      case 18: 
        m = zza.zzg(paramParcel, i3);
        break;
      case 21: 
        str4 = zza.zzp(paramParcel, i3);
        break;
      case 20: 
        f2 = zza.zzl(paramParcel, i3);
        break;
      case 25: 
        l2 = zza.zzi(paramParcel, i3);
        break;
      case 27: 
        localArrayList2 = zza.zzD(paramParcel, i3);
        break;
      case 26: 
        str3 = zza.zzp(paramParcel, i3);
        break;
      case 29: 
        localNativeAdOptionsParcel = (NativeAdOptionsParcel)zza.zza(paramParcel, i3, NativeAdOptionsParcel.CREATOR);
        break;
      case 28: 
        str2 = zza.zzp(paramParcel, i3);
        break;
      case 31: 
        l1 = zza.zzi(paramParcel, i3);
        break;
      case 30: 
        localArrayList1 = zza.zzD(paramParcel, i3);
        break;
      case 34: 
        f1 = zza.zzl(paramParcel, i3);
        break;
      case 35: 
        j = zza.zzg(paramParcel, i3);
        break;
      case 32: 
        localCapabilityParcel = (CapabilityParcel)zza.zza(paramParcel, i3, CapabilityParcel.CREATOR);
        break;
      case 33: 
        str1 = zza.zzp(paramParcel, i3);
        break;
      case 36: 
        i = zza.zzg(paramParcel, i3);
      }
    }
    if (paramParcel.dataPosition() != i2) {
      throw new zza.zza("Overread allowed size end=" + i2, paramParcel);
    }
    return new AdRequestInfoParcel(i1, localBundle3, localAdRequestParcel, localAdSizeParcel, str8, localApplicationInfo, localPackageInfo, str7, str6, str5, localVersionInfoParcel, localBundle2, n, localArrayList3, localBundle1, bool, localMessenger, m, k, f2, str4, l2, str3, localArrayList2, str2, localNativeAdOptionsParcel, localArrayList1, l1, localCapabilityParcel, str1, f1, j, i);
  }
  
  public AdRequestInfoParcel[] a(int paramInt)
  {
    return new AdRequestInfoParcel[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */