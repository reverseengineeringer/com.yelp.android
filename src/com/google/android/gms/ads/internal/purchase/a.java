package com.google.android.gms.ads.internal.purchase;

import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class a
  implements Parcelable.Creator<GInAppPurchaseManagerInfoParcel>
{
  static void a(GInAppPurchaseManagerInfoParcel paramGInAppPurchaseManagerInfoParcel, Parcel paramParcel, int paramInt)
  {
    paramInt = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, a);
    zzb.zza(paramParcel, 3, paramGInAppPurchaseManagerInfoParcel.b(), false);
    zzb.zza(paramParcel, 4, paramGInAppPurchaseManagerInfoParcel.c(), false);
    zzb.zza(paramParcel, 5, paramGInAppPurchaseManagerInfoParcel.d(), false);
    zzb.zza(paramParcel, 6, paramGInAppPurchaseManagerInfoParcel.a(), false);
    zzb.zzI(paramParcel, paramInt);
  }
  
  public GInAppPurchaseManagerInfoParcel a(Parcel paramParcel)
  {
    IBinder localIBinder1 = null;
    int j = zza.zzau(paramParcel);
    int i = 0;
    IBinder localIBinder2 = null;
    IBinder localIBinder3 = null;
    IBinder localIBinder4 = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = zza.zzat(paramParcel);
      switch (zza.zzca(k))
      {
      case 2: 
      default: 
        zza.zzb(paramParcel, k);
        break;
      case 1: 
        i = zza.zzg(paramParcel, k);
        break;
      case 3: 
        localIBinder4 = zza.zzq(paramParcel, k);
        break;
      case 4: 
        localIBinder3 = zza.zzq(paramParcel, k);
        break;
      case 5: 
        localIBinder2 = zza.zzq(paramParcel, k);
        break;
      case 6: 
        localIBinder1 = zza.zzq(paramParcel, k);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new GInAppPurchaseManagerInfoParcel(i, localIBinder4, localIBinder3, localIBinder2, localIBinder1);
  }
  
  public GInAppPurchaseManagerInfoParcel[] a(int paramInt)
  {
    return new GInAppPurchaseManagerInfoParcel[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.purchase.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */