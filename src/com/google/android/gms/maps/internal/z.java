package com.google.android.gms.maps.internal;

import android.graphics.Point;
import android.os.Parcel;
import android.os.Parcelable.Creator;
import com.google.android.gms.common.internal.safeparcel.a;
import com.google.android.gms.common.internal.safeparcel.a.a;
import com.google.android.gms.common.internal.safeparcel.b;

public class z
  implements Parcelable.Creator<y>
{
  static void a(y paramy, Parcel paramParcel, int paramInt)
  {
    int i = b.H(paramParcel);
    b.c(paramParcel, 1, paramy.getVersionCode());
    b.a(paramParcel, 2, paramy.oa(), paramInt, false);
    b.H(paramParcel, i);
  }
  
  public y cZ(Parcel paramParcel)
  {
    int j = a.G(paramParcel);
    int i = 0;
    Point localPoint = null;
    while (paramParcel.dataPosition() < j)
    {
      int k = a.F(paramParcel);
      switch (a.aH(k))
      {
      default: 
        a.b(paramParcel, k);
        break;
      case 1: 
        i = a.g(paramParcel, k);
        break;
      case 2: 
        localPoint = (Point)a.a(paramParcel, k, Point.CREATOR);
      }
    }
    if (paramParcel.dataPosition() != j) {
      throw new a.a("Overread allowed size end=" + j, paramParcel);
    }
    return new y(i, localPoint);
  }
  
  public y[] eV(int paramInt)
  {
    return new y[paramInt];
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.internal.z
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */