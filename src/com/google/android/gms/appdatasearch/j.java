package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class j
  implements Parcelable.Creator<UsageInfo>
{
  static void a(UsageInfo paramUsageInfo, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zza(paramParcel, 1, b, paramInt, false);
    zzb.zzc(paramParcel, 1000, a);
    zzb.zza(paramParcel, 2, c);
    zzb.zzc(paramParcel, 3, d);
    zzb.zza(paramParcel, 4, e, false);
    zzb.zza(paramParcel, 5, f, paramInt, false);
    zzb.zza(paramParcel, 6, g);
    zzb.zzc(paramParcel, 7, h);
    zzb.zzc(paramParcel, 8, paramUsageInfo.i);
    zzb.zzI(paramParcel, i);
  }
  
  public UsageInfo a(Parcel paramParcel)
  {
    DocumentContents localDocumentContents = null;
    int i = 0;
    int n = zza.zzau(paramParcel);
    long l = 0L;
    int j = -1;
    boolean bool = false;
    String str = null;
    int k = 0;
    DocumentId localDocumentId = null;
    int m = 0;
    while (paramParcel.dataPosition() < n)
    {
      int i1 = zza.zzat(paramParcel);
      switch (zza.zzca(i1))
      {
      default: 
        zza.zzb(paramParcel, i1);
        break;
      case 1: 
        localDocumentId = (DocumentId)zza.zza(paramParcel, i1, DocumentId.CREATOR);
        break;
      case 1000: 
        m = zza.zzg(paramParcel, i1);
        break;
      case 2: 
        l = zza.zzi(paramParcel, i1);
        break;
      case 3: 
        k = zza.zzg(paramParcel, i1);
        break;
      case 4: 
        str = zza.zzp(paramParcel, i1);
        break;
      case 5: 
        localDocumentContents = (DocumentContents)zza.zza(paramParcel, i1, DocumentContents.CREATOR);
        break;
      case 6: 
        bool = zza.zzc(paramParcel, i1);
        break;
      case 7: 
        j = zza.zzg(paramParcel, i1);
        break;
      case 8: 
        i = zza.zzg(paramParcel, i1);
      }
    }
    if (paramParcel.dataPosition() != n) {
      throw new zza.zza("Overread allowed size end=" + n, paramParcel);
    }
    return new UsageInfo(m, localDocumentId, l, k, str, localDocumentContents, bool, j, i);
  }
  
  public UsageInfo[] a(int paramInt)
  {
    return new UsageInfo[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */