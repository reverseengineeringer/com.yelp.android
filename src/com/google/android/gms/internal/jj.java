package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.IBinder;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class jj
  implements SafeParcelable
{
  public static final Parcelable.Creator<jj> CREATOR = new jk();
  final int MD;
  int ME;
  String MF;
  IBinder MG;
  Scope[] MH;
  Bundle MI;
  final int version;
  
  public jj(int paramInt)
  {
    version = 1;
    ME = 6587000;
    MD = paramInt;
  }
  
  jj(int paramInt1, int paramInt2, int paramInt3, String paramString, IBinder paramIBinder, Scope[] paramArrayOfScope, Bundle paramBundle)
  {
    version = paramInt1;
    MD = paramInt2;
    ME = paramInt3;
    MF = paramString;
    MG = paramIBinder;
    MH = paramArrayOfScope;
    MI = paramBundle;
  }
  
  public jj a(jq paramjq)
  {
    if (paramjq != null) {
      MG = paramjq.asBinder();
    }
    return this;
  }
  
  public jj a(Scope[] paramArrayOfScope)
  {
    MH = paramArrayOfScope;
    return this;
  }
  
  public jj aX(String paramString)
  {
    MF = paramString;
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public jj e(Bundle paramBundle)
  {
    MI = paramBundle;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    jk.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.jj
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */