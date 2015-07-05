package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class kk
  implements SafeParcelable
{
  public static final kl CREATOR = new kl();
  final int CK;
  public final String ND;
  public final int NE;
  
  public kk(int paramInt1, String paramString, int paramInt2)
  {
    CK = paramInt1;
    ND = paramString;
    NE = paramInt2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kl.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.kk
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */