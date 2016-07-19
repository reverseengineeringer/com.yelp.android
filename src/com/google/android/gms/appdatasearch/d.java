package com.google.android.gms.appdatasearch;

import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class d
  implements Parcelable.Creator<DocumentSection>
{
  static void a(DocumentSection paramDocumentSection, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zza(paramParcel, 1, c, false);
    zzb.zzc(paramParcel, 1000, b);
    zzb.zza(paramParcel, 3, d, paramInt, false);
    zzb.zzc(paramParcel, 4, e);
    zzb.zza(paramParcel, 5, f, false);
    zzb.zzI(paramParcel, i);
  }
  
  public DocumentSection a(Parcel paramParcel)
  {
    byte[] arrayOfByte = null;
    int k = zza.zzau(paramParcel);
    int j = 0;
    int i = -1;
    RegisterSectionInfo localRegisterSectionInfo = null;
    String str = null;
    while (paramParcel.dataPosition() < k)
    {
      int m = zza.zzat(paramParcel);
      switch (zza.zzca(m))
      {
      default: 
        zza.zzb(paramParcel, m);
        break;
      case 1: 
        str = zza.zzp(paramParcel, m);
        break;
      case 1000: 
        j = zza.zzg(paramParcel, m);
        break;
      case 3: 
        localRegisterSectionInfo = (RegisterSectionInfo)zza.zza(paramParcel, m, RegisterSectionInfo.CREATOR);
        break;
      case 4: 
        i = zza.zzg(paramParcel, m);
        break;
      case 5: 
        arrayOfByte = zza.zzs(paramParcel, m);
      }
    }
    if (paramParcel.dataPosition() != k) {
      throw new zza.zza("Overread allowed size end=" + k, paramParcel);
    }
    return new DocumentSection(j, str, localRegisterSectionInfo, i, arrayOfByte);
  }
  
  public DocumentSection[] a(int paramInt)
  {
    return new DocumentSection[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */