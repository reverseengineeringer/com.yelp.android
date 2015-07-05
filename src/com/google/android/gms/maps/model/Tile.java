package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.aa;

public final class Tile
  implements SafeParcelable
{
  public static final u CREATOR = new u();
  private final int CK;
  public final byte[] data;
  public final int height;
  public final int width;
  
  Tile(int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte)
  {
    CK = paramInt1;
    width = paramInt2;
    height = paramInt3;
    data = paramArrayOfByte;
  }
  
  public Tile(int paramInt1, int paramInt2, byte[] paramArrayOfByte)
  {
    this(1, paramInt1, paramInt2, paramArrayOfByte);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (aa.ob())
    {
      v.a(this, paramParcel, paramInt);
      return;
    }
    u.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.Tile
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */