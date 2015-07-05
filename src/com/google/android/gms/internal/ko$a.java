package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class ko$a
  implements SafeParcelable
{
  public static final kq CREATOR = new kq();
  final String NJ;
  final int NK;
  final int versionCode;
  
  ko$a(int paramInt1, String paramString, int paramInt2)
  {
    versionCode = paramInt1;
    NJ = paramString;
    NK = paramInt2;
  }
  
  ko$a(String paramString, int paramInt)
  {
    versionCode = 1;
    NJ = paramString;
    NK = paramInt;
  }
  
  public int describeContents()
  {
    kq localkq = CREATOR;
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    kq localkq = CREATOR;
    kq.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ko.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */