package com.google.android.gms.maps.model;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.common.internal.zzx;
import com.yelp.android.ba.a.f;

public final class CameraPosition
  implements SafeParcelable
{
  public static final e CREATOR = new e();
  public final LatLng a;
  public final float b;
  public final float c;
  public final float d;
  private final int e;
  
  CameraPosition(int paramInt, LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    zzx.zzb(paramLatLng, "null camera target");
    if ((0.0F <= paramFloat2) && (paramFloat2 <= 90.0F)) {}
    for (boolean bool = true;; bool = false)
    {
      zzx.zzb(bool, "Tilt needs to be between 0 and 90 inclusive: %s", new Object[] { Float.valueOf(paramFloat2) });
      e = paramInt;
      a = paramLatLng;
      b = paramFloat1;
      c = (paramFloat2 + 0.0F);
      paramFloat1 = paramFloat3;
      if (paramFloat3 <= 0.0D) {
        paramFloat1 = paramFloat3 % 360.0F + 360.0F;
      }
      d = (paramFloat1 % 360.0F);
      return;
    }
  }
  
  public CameraPosition(LatLng paramLatLng, float paramFloat1, float paramFloat2, float paramFloat3)
  {
    this(1, paramLatLng, paramFloat1, paramFloat2, paramFloat3);
  }
  
  public static a a(CameraPosition paramCameraPosition)
  {
    return new a(paramCameraPosition);
  }
  
  public static CameraPosition a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return null;
    }
    paramContext = paramContext.getResources().obtainAttributes(paramAttributeSet, a.f.MapAttrs);
    if (paramContext.hasValue(a.f.MapAttrs_cameraTargetLat)) {}
    for (float f1 = paramContext.getFloat(a.f.MapAttrs_cameraTargetLat, 0.0F);; f1 = 0.0F)
    {
      if (paramContext.hasValue(a.f.MapAttrs_cameraTargetLng)) {}
      for (float f2 = paramContext.getFloat(a.f.MapAttrs_cameraTargetLng, 0.0F);; f2 = 0.0F)
      {
        paramAttributeSet = new LatLng(f1, f2);
        a locala = b();
        locala.a(paramAttributeSet);
        if (paramContext.hasValue(a.f.MapAttrs_cameraZoom)) {
          locala.a(paramContext.getFloat(a.f.MapAttrs_cameraZoom, 0.0F));
        }
        if (paramContext.hasValue(a.f.MapAttrs_cameraBearing)) {
          locala.c(paramContext.getFloat(a.f.MapAttrs_cameraBearing, 0.0F));
        }
        if (paramContext.hasValue(a.f.MapAttrs_cameraTilt)) {
          locala.b(paramContext.getFloat(a.f.MapAttrs_cameraTilt, 0.0F));
        }
        return locala.a();
      }
    }
  }
  
  public static a b()
  {
    return new a();
  }
  
  int a()
  {
    return e;
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
      if (!(paramObject instanceof CameraPosition)) {
        return false;
      }
      paramObject = (CameraPosition)paramObject;
    } while ((a.equals(a)) && (Float.floatToIntBits(b) == Float.floatToIntBits(b)) && (Float.floatToIntBits(c) == Float.floatToIntBits(c)) && (Float.floatToIntBits(d) == Float.floatToIntBits(d)));
    return false;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { a, Float.valueOf(b), Float.valueOf(c), Float.valueOf(d) });
  }
  
  public String toString()
  {
    return zzw.zzy(this).zzg("target", a).zzg("zoom", Float.valueOf(b)).zzg("tilt", Float.valueOf(c)).zzg("bearing", Float.valueOf(d)).toString();
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel, paramInt);
  }
  
  public static final class a
  {
    private LatLng a;
    private float b;
    private float c;
    private float d;
    
    public a() {}
    
    public a(CameraPosition paramCameraPosition)
    {
      a = a;
      b = b;
      c = c;
      d = d;
    }
    
    public a a(float paramFloat)
    {
      b = paramFloat;
      return this;
    }
    
    public a a(LatLng paramLatLng)
    {
      a = paramLatLng;
      return this;
    }
    
    public CameraPosition a()
    {
      return new CameraPosition(a, b, c, d);
    }
    
    public a b(float paramFloat)
    {
      c = paramFloat;
      return this;
    }
    
    public a c(float paramFloat)
    {
      d = paramFloat;
      return this;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.CameraPosition
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */