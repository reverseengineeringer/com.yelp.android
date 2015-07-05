package com.google.android.gms.maps.internal;

import android.graphics.Point;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

public class y
  implements SafeParcelable
{
  public static final z CREATOR = new z();
  private final Point alK;
  private final int versionCode;
  
  public y(int paramInt, Point paramPoint)
  {
    versionCode = paramInt;
    alK = paramPoint;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {
      return true;
    }
    if (!(paramObject instanceof y)) {
      return false;
    }
    paramObject = (y)paramObject;
    return alK.equals(alK);
  }
  
  int getVersionCode()
  {
    return versionCode;
  }
  
  public int hashCode()
  {
    return alK.hashCode();
  }
  
  public Point oa()
  {
    return alK;
  }
  
  public String toString()
  {
    return alK.toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    z.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.y
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */