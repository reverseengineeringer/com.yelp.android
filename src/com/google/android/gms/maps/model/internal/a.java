package com.google.android.gms.maps.model.internal;

import android.graphics.Bitmap;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public final class a
  implements SafeParcelable
{
  public static final b CREATOR = new b();
  private final int CK;
  private byte amJ;
  private Bundle amK;
  private Bitmap amL;
  
  a(int paramInt, byte paramByte, Bundle paramBundle, Bitmap paramBitmap)
  {
    CK = paramInt;
    amJ = paramByte;
    amK = paramBundle;
    amL = paramBitmap;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public Bitmap getBitmap()
  {
    return amL;
  }
  
  public int getVersionCode()
  {
    return CK;
  }
  
  public byte oh()
  {
    return amJ;
  }
  
  public Bundle oi()
  {
    return amK;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    b.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.internal.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */