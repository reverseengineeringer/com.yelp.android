package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.zza;
import com.google.android.gms.common.internal.safeparcel.zza.zza;
import com.google.android.gms.common.internal.safeparcel.zzb;
import java.util.ArrayList;

public class a
  implements Parcelable.Creator<GoogleSignInAccount>
{
  static void a(GoogleSignInAccount paramGoogleSignInAccount, Parcel paramParcel, int paramInt)
  {
    int i = zzb.zzav(paramParcel);
    zzb.zzc(paramParcel, 1, b);
    zzb.zza(paramParcel, 2, paramGoogleSignInAccount.a(), false);
    zzb.zza(paramParcel, 3, paramGoogleSignInAccount.b(), false);
    zzb.zza(paramParcel, 4, paramGoogleSignInAccount.c(), false);
    zzb.zza(paramParcel, 5, paramGoogleSignInAccount.d(), false);
    zzb.zza(paramParcel, 6, paramGoogleSignInAccount.e(), paramInt, false);
    zzb.zza(paramParcel, 7, paramGoogleSignInAccount.f(), false);
    zzb.zza(paramParcel, 8, paramGoogleSignInAccount.g());
    zzb.zza(paramParcel, 9, paramGoogleSignInAccount.h(), false);
    zzb.zzc(paramParcel, 10, c, false);
    zzb.zzI(paramParcel, i);
  }
  
  public GoogleSignInAccount a(Parcel paramParcel)
  {
    ArrayList localArrayList = null;
    int j = zza.zzau(paramParcel);
    int i = 0;
    long l = 0L;
    String str1 = null;
    String str2 = null;
    Uri localUri = null;
    String str3 = null;
    String str4 = null;
    String str5 = null;
    String str6 = null;
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
        str6 = zza.zzp(paramParcel, k);
        break;
      case 3: 
        str5 = zza.zzp(paramParcel, k);
        break;
      case 4: 
        str4 = zza.zzp(paramParcel, k);
        break;
      case 5: 
        str3 = zza.zzp(paramParcel, k);
        break;
      case 6: 
        localUri = (Uri)zza.zza(paramParcel, k, Uri.CREATOR);
        break;
      case 7: 
        str2 = zza.zzp(paramParcel, k);
        break;
      case 8: 
        l = zza.zzi(paramParcel, k);
        break;
      case 9: 
        str1 = zza.zzp(paramParcel, k);
        break;
      case 10: 
        localArrayList = zza.zzc(paramParcel, k, Scope.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new zza.zza("Overread allowed size end=" + j, paramParcel);
    }
    return new GoogleSignInAccount(i, str6, str5, str4, str3, localUri, str2, l, str1, localArrayList);
  }
  
  public GoogleSignInAccount[] a(int paramInt)
  {
    return new GoogleSignInAccount[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.auth.api.signin.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */