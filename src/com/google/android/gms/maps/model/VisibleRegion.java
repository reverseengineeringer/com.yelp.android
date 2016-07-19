package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;

public final class VisibleRegion
  implements SafeParcelable
{
  public static final t CREATOR = new t();
  public final LatLng a;
  public final LatLng b;
  public final LatLng c;
  public final LatLng d;
  public final LatLngBounds e;
  private final int f;
  
  VisibleRegion(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2, LatLng paramLatLng3, LatLng paramLatLng4, LatLngBounds paramLatLngBounds)
  {
    f = paramInt;
    a = paramLatLng1;
    b = paramLatLng2;
    c = paramLatLng3;
    d = paramLatLng4;
    e = paramLatLngBounds;
  }
  
  int a()
  {
    return f;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof VisibleRegion)) {
        return false;
      }
      paramObject = (VisibleRegion)paramObject;
    } while ((a.equals(a)) && (b.equals(b)) && (c.equals(c)) && (d.equals(d)) && (e.equals(e)));
    return false;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { a, b, c, d, e });
  }
  
  public String toString()
  {
    return zzw.zzy(this).zzg("nearLeft", a).zzg("nearRight", b).zzg("farLeft", c).zzg("farRight", d).zzg("latLngBounds", e).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    t.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.VisibleRegion
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */