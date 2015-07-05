package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@ey
public final class gs
  implements SafeParcelable
{
  public static final gt CREATOR = new gt();
  public final int versionCode;
  public String wS;
  public int wT;
  public int wU;
  public boolean wV;
  
  public gs(int paramInt1, int paramInt2, boolean paramBoolean) {}
  
  gs(int paramInt1, String paramString, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    versionCode = paramInt1;
    wS = paramString;
    wT = paramInt2;
    wU = paramInt3;
    wV = paramBoolean;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    gt.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gs
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */