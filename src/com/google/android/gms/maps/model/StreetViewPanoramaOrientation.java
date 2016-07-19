package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.common.internal.zzx;

public class StreetViewPanoramaOrientation
  implements SafeParcelable
{
  public static final q CREATOR = new q();
  public final float a;
  public final float b;
  private final int c;
  
  public StreetViewPanoramaOrientation(float paramFloat1, float paramFloat2)
  {
    this(1, paramFloat1, paramFloat2);
  }
  
  StreetViewPanoramaOrientation(int paramInt, float paramFloat1, float paramFloat2)
  {
    if ((-90.0F <= paramFloat1) && (paramFloat1 <= 90.0F)) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "Tilt needs to be between -90 and 90 inclusive");
      c = paramInt;
      a = (0.0F + paramFloat1);
      paramFloat1 = paramFloat2;
      if (paramFloat2 <= 0.0D) {
        paramFloat1 = paramFloat2 % 360.0F + 360.0F;
      }
      b = (paramFloat1 % 360.0F);
      return;
    }
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
      if (!(paramObject instanceof StreetViewPanoramaOrientation)) {
        return false;
      }
      paramObject = (StreetViewPanoramaOrientation)paramObject;
    } while ((Float.floatToIntBits(a) == Float.floatToIntBits(a)) && (Float.floatToIntBits(b) == Float.floatToIntBits(b)));
    return false;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { Float.valueOf(a), Float.valueOf(b) });
  }
  
  public String toString()
  {
    return zzw.zzy(this).zzg("tilt", Float.valueOf(a)).zzg("bearing", Float.valueOf(b)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    q.a(this, paramParcel, paramInt);
  }
  
  public static final class a
  {
    public float a;
    public float b;
    
    public a a(float paramFloat)
    {
      b = paramFloat;
      return this;
    }
    
    public StreetViewPanoramaOrientation a()
    {
      return new StreetViewPanoramaOrientation(b, a);
    }
    
    public a b(float paramFloat)
    {
      a = paramFloat;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.StreetViewPanoramaOrientation
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */