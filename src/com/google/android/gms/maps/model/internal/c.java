package com.google.android.gms.maps.model.internal;

import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class c
  implements SafeParcelable
{
  public static final d CREATOR = new d();
  private final int CK;
  private Bundle amK;
  private int type;
  
  c(int paramInt1, int paramInt2, Bundle paramBundle)
  {
    CK = paramInt1;
    type = paramInt2;
    amK = paramBundle;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int getType()
  {
    return type;
  }
  
  public int getVersionCode()
  {
    return CK;
  }
  
  public Bundle oi()
  {
    return amK;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    d.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */