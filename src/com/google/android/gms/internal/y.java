package com.google.android.gms.internal;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@ey
public final class y
  implements SafeParcelable
{
  public static final z CREATOR = new z();
  public final boolean mi;
  public final boolean ms;
  public final int versionCode;
  
  y(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    versionCode = paramInt;
    mi = paramBoolean1;
    ms = paramBoolean2;
  }
  
  public y(boolean paramBoolean1, boolean paramBoolean2)
  {
    versionCode = 1;
    mi = paramBoolean1;
    ms = paramBoolean2;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    z.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */