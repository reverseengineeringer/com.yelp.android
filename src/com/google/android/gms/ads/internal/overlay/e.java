package com.google.android.gms.ads.internal.overlay;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.ads.internal.InterstitialAdParameterParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class e
  implements Parcelable.Creator<AdOverlayInfoParcel>
{
  static void a(AdOverlayInfoParcel paramAdOverlayInfoParcel, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zza(paramParcel, 2, b, paramInt, false);
    zzb.zza(paramParcel, 3, paramAdOverlayInfoParcel.a(), false);
    zzb.zza(paramParcel, 4, paramAdOverlayInfoParcel.b(), false);
    zzb.zza(paramParcel, 5, paramAdOverlayInfoParcel.c(), false);
    zzb.zza(paramParcel, 6, paramAdOverlayInfoParcel.d(), false);
    zzb.zza(paramParcel, 7, g, false);
    zzb.zza(paramParcel, 8, h);
    zzb.zza(paramParcel, 9, paramAdOverlayInfoParcel.i, false);
    zzb.zza(paramParcel, 10, paramAdOverlayInfoParcel.f(), false);
    zzb.zzc(paramParcel, 11, k);
    zzb.zzc(paramParcel, 12, l);
    zzb.zza(paramParcel, 13, m, false);
    zzb.zza(paramParcel, 14, n, paramInt, false);
    zzb.zza(paramParcel, 15, paramAdOverlayInfoParcel.e(), false);
    zzb.zza(paramParcel, 17, q, paramInt, false);
    zzb.zza(paramParcel, 16, p, false);
    zzb.zzI(paramParcel, i);
  }
  
  public AdOverlayInfoParcel a(Parcel paramParcel)
  {
    int m = zza.zzau(paramParcel);
    int k = 0;
    AdLauncherIntentInfoParcel localAdLauncherIntentInfoParcel = null;
    IBinder localIBinder6 = null;
    IBinder localIBinder5 = null;
    IBinder localIBinder4 = null;
    IBinder localIBinder3 = null;
    String str4 = null;
    boolean bool = false;
    String str3 = null;
    IBinder localIBinder2 = null;
    int j = 0;
    int i = 0;
    String str2 = null;
    VersionInfoParcel localVersionInfoParcel = null;
    IBinder localIBinder1 = null;
    String str1 = null;
    InterstitialAdParameterParcel localInterstitialAdParameterParcel = null;
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
        localAdLauncherIntentInfoParcel = (AdLauncherIntentInfoParcel)zza.zza(paramParcel, n, AdLauncherIntentInfoParcel.CREATOR);
        break;
      case 3: 
        localIBinder6 = zza.zzq(paramParcel, n);
        break;
      case 4: 
        localIBinder5 = zza.zzq(paramParcel, n);
        break;
      case 5: 
        localIBinder4 = zza.zzq(paramParcel, n);
        break;
      case 6: 
        localIBinder3 = zza.zzq(paramParcel, n);
        break;
      case 7: 
        str4 = zza.zzp(paramParcel, n);
        break;
      case 8: 
        bool = zza.zzc(paramParcel, n);
        break;
      case 9: 
        str3 = zza.zzp(paramParcel, n);
        break;
      case 10: 
        localIBinder2 = zza.zzq(paramParcel, n);
        break;
      case 11: 
        j = zza.zzg(paramParcel, n);
        break;
      case 12: 
        i = zza.zzg(paramParcel, n);
        break;
      case 13: 
        str2 = zza.zzp(paramParcel, n);
        break;
      case 14: 
        localVersionInfoParcel = (VersionInfoParcel)zza.zza(paramParcel, n, VersionInfoParcel.CREATOR);
        break;
      case 15: 
        localIBinder1 = zza.zzq(paramParcel, n);
        break;
      case 17: 
        localInterstitialAdParameterParcel = (InterstitialAdParameterParcel)zza.zza(paramParcel, n, InterstitialAdParameterParcel.CREATOR);
        break;
      case 16: 
        str1 = zza.zzp(paramParcel, n);
      }
    }
    if (paramParcel.dataPosition() != m) {
      throw new zza.zza("Overread allowed size end=" + m, paramParcel);
    }
    return new AdOverlayInfoParcel(k, localAdLauncherIntentInfoParcel, localIBinder6, localIBinder5, localIBinder4, localIBinder3, str4, bool, str3, localIBinder2, j, i, str2, localVersionInfoParcel, localIBinder1, str1, localInterstitialAdParameterParcel);
  }
  
  public AdOverlayInfoParcel[] a(int paramInt)
  {
    return new AdOverlayInfoParcel[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.overlay.e
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */