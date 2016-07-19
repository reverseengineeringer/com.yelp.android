package com.google.android.gms.location;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;

public final class LocationAvailability
  implements SafeParcelable
{
  public static final i CREATOR = new i();
  int a;
  int b;
  long c;
  int d;
  private final int e;
  
  LocationAvailability(int paramInt1, int paramInt2, int paramInt3, int paramInt4, long paramLong)
  {
    e = paramInt1;
    d = paramInt2;
    a = paramInt3;
    b = paramInt4;
    c = paramLong;
  }
  
  public boolean a()
  {
    return d < 1000;
  }
  
  int b()
  {
    return e;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof LocationAvailability)) {}
    do
    {
      return false;
      paramObject = (LocationAvailability)paramObject;
    } while ((d != d) || (a != a) || (b != b) || (c != c));
    return true;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { Integer.valueOf(d), Integer.valueOf(a), Integer.valueOf(b), Long.valueOf(c) });
  }
  
  public String toString()
  {
    return "LocationAvailability[isLocationAvailable: " + a() + "]";
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    i.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.LocationAvailability
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */