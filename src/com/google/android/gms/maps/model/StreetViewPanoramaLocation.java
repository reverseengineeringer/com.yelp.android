package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;

public class StreetViewPanoramaLocation
  implements SafeParcelable
{
  public static final p CREATOR = new p();
  public final StreetViewPanoramaLink[] a;
  public final LatLng b;
  public final String c;
  private final int d;
  
  StreetViewPanoramaLocation(int paramInt, StreetViewPanoramaLink[] paramArrayOfStreetViewPanoramaLink, LatLng paramLatLng, String paramString)
  {
    d = paramInt;
    a = paramArrayOfStreetViewPanoramaLink;
    b = paramLatLng;
    c = paramString;
  }
  
  int a()
  {
    return d;
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
      if (!(paramObject instanceof StreetViewPanoramaLocation)) {
        return false;
      }
      paramObject = (StreetViewPanoramaLocation)paramObject;
    } while ((c.equals(c)) && (b.equals(b)));
    return false;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { b, c });
  }
  
  public String toString()
  {
    return zzw.zzy(this).zzg("panoId", c).zzg("position", b.toString()).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    p.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaLocation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */