package com.google.android.gms.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class if
  implements SafeParcelable
{
  public static final ig CREATOR = new ig();
  final Bundle Ep;
  final byte[] Eq;
  final int responseCode;
  final int versionCode;
  
  public if(int paramInt1, int paramInt2, Bundle paramBundle, byte[] paramArrayOfByte)
  {
    versionCode = paramInt1;
    responseCode = paramInt2;
    Ep = paramBundle;
    Eq = paramArrayOfByte;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    ig.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.if
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */