package com.google.android.gms.appdatasearch;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;

public class b
  implements Parcelable.Creator<DocumentContents>
{
  static void a(DocumentContents paramDocumentContents, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zza(paramParcel, 1, b, paramInt, false);
    zzb.zzc(paramParcel, 1000, a);
    zzb.zza(paramParcel, 2, c, false);
    zzb.zza(paramParcel, 3, d);
    zzb.zza(paramParcel, 4, e, paramInt, false);
    zzb.zzI(paramParcel, i);
  }
  
  public DocumentContents a(Parcel paramParcel)
  {
    boolean bool = false;
    Account localAccount = null;
    int j = zza.zzau(paramParcel);
    String str = null;
    DocumentSection[] arrayOfDocumentSection = null;
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
        arrayOfDocumentSection = (DocumentSection[])zza.zzb(paramParcel, k, DocumentSection.CREATOR);
        break;
      case 1000: 
        i = zza.zzg(paramParcel, k);
        break;
      case 2: 
        str = zza.zzp(paramParcel, k);
        break;
      case 3: 
        bool = zza.zzc(paramParcel, k);
        break;
      case 4: 
        localAccount = (Account)zza.zza(paramParcel, k, Account.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new DocumentContents(i, arrayOfDocumentSection, str, bool, localAccount);
  }
  
  public DocumentContents[] a(int paramInt)
  {
    return new DocumentContents[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.appdatasearch.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */