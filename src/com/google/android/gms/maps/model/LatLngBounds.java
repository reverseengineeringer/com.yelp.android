package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.common.internal.zzx;

public final class LatLngBounds
  implements SafeParcelable
{
  public static final h CREATOR = new h();
  public final LatLng a;
  public final LatLng b;
  private final int c;
  
  LatLngBounds(int paramInt, LatLng paramLatLng1, LatLng paramLatLng2)
  {
    zzx.zzb(paramLatLng1, "null southwest");
    zzx.zzb(paramLatLng2, "null northeast");
    if (a >= a) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "southern latitude exceeds northern latitude (%s > %s)", new Object[] { Double.valueOf(a), Double.valueOf(a) });
      c = paramInt;
      a = paramLatLng1;
      b = paramLatLng2;
      return;
    }
  }
  
  public LatLngBounds(LatLng paramLatLng1, LatLng paramLatLng2)
  {
    this(1, paramLatLng1, paramLatLng2);
  }
  
  public static a b()
  {
    return new a();
  }
  
  private static double c(double paramDouble1, double paramDouble2)
  {
    return (paramDouble1 - paramDouble2 + 360.0D) % 360.0D;
  }
  
  private static double d(double paramDouble1, double paramDouble2)
  {
    return (paramDouble2 - paramDouble1 + 360.0D) % 360.0D;
  }
  
  int a()
  {
    return c;
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
      if (!(paramObject instanceof LatLngBounds)) {
        return false;
      }
      paramObject = (LatLngBounds)paramObject;
    } while ((a.equals(a)) && (b.equals(b)));
    return false;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { a, b });
  }
  
  public String toString()
  {
    return zzw.zzy(this).zzg("southwest", a).zzg("northeast", b).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    h.a(this, paramParcel, paramInt);
  }
  
  public static final class a
  {
    private double a = Double.POSITIVE_INFINITY;
    private double b = Double.NEGATIVE_INFINITY;
    private double c = NaN.0D;
    private double d = NaN.0D;
    
    private boolean a(double paramDouble)
    {
      boolean bool = false;
      if (c <= d) {
        return (c <= paramDouble) && (paramDouble <= d);
      }
      if ((c <= paramDouble) || (paramDouble <= d)) {
        bool = true;
      }
      return bool;
    }
    
    public a a(LatLng paramLatLng)
    {
      a = Math.min(a, a);
      b = Math.max(b, a);
      double d1 = b;
      if (Double.isNaN(c))
      {
        c = d1;
        d = d1;
      }
      while (a(d1)) {
        return this;
      }
      if (LatLngBounds.a(c, d1) < LatLngBounds.b(d, d1))
      {
        c = d1;
        return this;
      }
      d = d1;
      return this;
    }
    
    public LatLngBounds a()
    {
      if (!Double.isNaN(c)) {}
      for (boolean bool = true;; bool = false)
      {
        zzx.zza(bool, "no included points");
        return new LatLngBounds(new LatLng(a, c), new LatLng(b, d));
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.LatLngBounds
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */