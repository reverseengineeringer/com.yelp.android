package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@ey
public final class do
  implements SafeParcelable
{
  public static final dn CREATOR = new dn();
  public final String mimeType;
  public final String packageName;
  public final String rG;
  public final String rH;
  public final String rI;
  public final String rJ;
  public final String rK;
  public final int versionCode;
  
  public do(int paramInt, String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    versionCode = paramInt;
    rG = paramString1;
    rH = paramString2;
    mimeType = paramString3;
    packageName = paramString4;
    rI = paramString5;
    rJ = paramString6;
    rK = paramString7;
  }
  
  public do(String paramString1, String paramString2, String paramString3, String paramString4, String paramString5, String paramString6, String paramString7)
  {
    this(1, paramString1, paramString2, paramString3, paramString4, paramString5, paramString6, paramString7);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    dn.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.do
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */