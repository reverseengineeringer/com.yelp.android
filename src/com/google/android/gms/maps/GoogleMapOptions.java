package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.model.CameraPosition;
import com.yelp.android.ba.a.f;
import com.yelp.android.bj.m;

public final class GoogleMapOptions
  implements SafeParcelable
{
  public static final j CREATOR = new j();
  private final int a;
  private Boolean b;
  private Boolean c;
  private int d = -1;
  private CameraPosition e;
  private Boolean f;
  private Boolean g;
  private Boolean h;
  private Boolean i;
  private Boolean j;
  private Boolean k;
  private Boolean l;
  private Boolean m;
  private Boolean n;
  
  public GoogleMapOptions()
  {
    a = 1;
  }
  
  GoogleMapOptions(int paramInt1, byte paramByte1, byte paramByte2, int paramInt2, CameraPosition paramCameraPosition, byte paramByte3, byte paramByte4, byte paramByte5, byte paramByte6, byte paramByte7, byte paramByte8, byte paramByte9, byte paramByte10, byte paramByte11)
  {
    a = paramInt1;
    b = m.a(paramByte1);
    c = m.a(paramByte2);
    d = paramInt2;
    e = paramCameraPosition;
    f = m.a(paramByte3);
    g = m.a(paramByte4);
    h = m.a(paramByte5);
    i = m.a(paramByte6);
    j = m.a(paramByte7);
    k = m.a(paramByte8);
    l = m.a(paramByte9);
    m = m.a(paramByte10);
    n = m.a(paramByte11);
  }
  
  public static GoogleMapOptions a(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return null;
    }
    TypedArray localTypedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, a.f.MapAttrs);
    GoogleMapOptions localGoogleMapOptions = new GoogleMapOptions();
    if (localTypedArray.hasValue(a.f.MapAttrs_mapType)) {
      localGoogleMapOptions.a(localTypedArray.getInt(a.f.MapAttrs_mapType, -1));
    }
    if (localTypedArray.hasValue(a.f.MapAttrs_zOrderOnTop)) {
      localGoogleMapOptions.a(localTypedArray.getBoolean(a.f.MapAttrs_zOrderOnTop, false));
    }
    if (localTypedArray.hasValue(a.f.MapAttrs_useViewLifecycle)) {
      localGoogleMapOptions.b(localTypedArray.getBoolean(a.f.MapAttrs_useViewLifecycle, false));
    }
    if (localTypedArray.hasValue(a.f.MapAttrs_uiCompass)) {
      localGoogleMapOptions.d(localTypedArray.getBoolean(a.f.MapAttrs_uiCompass, true));
    }
    if (localTypedArray.hasValue(a.f.MapAttrs_uiRotateGestures)) {
      localGoogleMapOptions.h(localTypedArray.getBoolean(a.f.MapAttrs_uiRotateGestures, true));
    }
    if (localTypedArray.hasValue(a.f.MapAttrs_uiScrollGestures)) {
      localGoogleMapOptions.e(localTypedArray.getBoolean(a.f.MapAttrs_uiScrollGestures, true));
    }
    if (localTypedArray.hasValue(a.f.MapAttrs_uiTiltGestures)) {
      localGoogleMapOptions.g(localTypedArray.getBoolean(a.f.MapAttrs_uiTiltGestures, true));
    }
    if (localTypedArray.hasValue(a.f.MapAttrs_uiZoomGestures)) {
      localGoogleMapOptions.f(localTypedArray.getBoolean(a.f.MapAttrs_uiZoomGestures, true));
    }
    if (localTypedArray.hasValue(a.f.MapAttrs_uiZoomControls)) {
      localGoogleMapOptions.c(localTypedArray.getBoolean(a.f.MapAttrs_uiZoomControls, true));
    }
    if (localTypedArray.hasValue(a.f.MapAttrs_liteMode)) {
      localGoogleMapOptions.i(localTypedArray.getBoolean(a.f.MapAttrs_liteMode, false));
    }
    if (localTypedArray.hasValue(a.f.MapAttrs_uiMapToolbar)) {
      localGoogleMapOptions.j(localTypedArray.getBoolean(a.f.MapAttrs_uiMapToolbar, true));
    }
    if (localTypedArray.hasValue(a.f.MapAttrs_ambientEnabled)) {
      localGoogleMapOptions.k(localTypedArray.getBoolean(a.f.MapAttrs_ambientEnabled, false));
    }
    localGoogleMapOptions.a(CameraPosition.a(paramContext, paramAttributeSet));
    localTypedArray.recycle();
    return localGoogleMapOptions;
  }
  
  int a()
  {
    return a;
  }
  
  public GoogleMapOptions a(int paramInt)
  {
    d = paramInt;
    return this;
  }
  
  public GoogleMapOptions a(CameraPosition paramCameraPosition)
  {
    e = paramCameraPosition;
    return this;
  }
  
  public GoogleMapOptions a(boolean paramBoolean)
  {
    b = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte b()
  {
    return m.a(b);
  }
  
  public GoogleMapOptions b(boolean paramBoolean)
  {
    c = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte c()
  {
    return m.a(c);
  }
  
  public GoogleMapOptions c(boolean paramBoolean)
  {
    f = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte d()
  {
    return m.a(f);
  }
  
  public GoogleMapOptions d(boolean paramBoolean)
  {
    g = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  byte e()
  {
    return m.a(g);
  }
  
  public GoogleMapOptions e(boolean paramBoolean)
  {
    h = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte f()
  {
    return m.a(h);
  }
  
  public GoogleMapOptions f(boolean paramBoolean)
  {
    i = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte g()
  {
    return m.a(i);
  }
  
  public GoogleMapOptions g(boolean paramBoolean)
  {
    j = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte h()
  {
    return m.a(j);
  }
  
  public GoogleMapOptions h(boolean paramBoolean)
  {
    k = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte i()
  {
    return m.a(k);
  }
  
  public GoogleMapOptions i(boolean paramBoolean)
  {
    l = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte j()
  {
    return m.a(l);
  }
  
  public GoogleMapOptions j(boolean paramBoolean)
  {
    m = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte k()
  {
    return m.a(m);
  }
  
  public GoogleMapOptions k(boolean paramBoolean)
  {
    n = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  byte l()
  {
    return m.a(n);
  }
  
  public int m()
  {
    return d;
  }
  
  public CameraPosition n()
  {
    return e;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMapOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */