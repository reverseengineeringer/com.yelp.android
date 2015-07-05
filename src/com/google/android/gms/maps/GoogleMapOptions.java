package com.google.android.gms.maps;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.os.Parcel;
import android.util.AttributeSet;
import com.google.android.gms.R.styleable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.aa;
import com.google.android.gms.maps.model.CameraPosition;

public final class GoogleMapOptions
  implements SafeParcelable
{
  public static final a CREATOR = new a();
  private final int CK;
  private Boolean akF;
  private Boolean akG;
  private int akH = -1;
  private CameraPosition akI;
  private Boolean akJ;
  private Boolean akK;
  private Boolean akL;
  private Boolean akM;
  private Boolean akN;
  private Boolean akO;
  private Boolean akP;
  private Boolean akQ;
  
  public GoogleMapOptions()
  {
    CK = 1;
  }
  
  GoogleMapOptions(int paramInt1, byte paramByte1, byte paramByte2, int paramInt2, CameraPosition paramCameraPosition, byte paramByte3, byte paramByte4, byte paramByte5, byte paramByte6, byte paramByte7, byte paramByte8, byte paramByte9, byte paramByte10)
  {
    CK = paramInt1;
    akF = com.google.android.gms.maps.internal.a.a(paramByte1);
    akG = com.google.android.gms.maps.internal.a.a(paramByte2);
    akH = paramInt2;
    akI = paramCameraPosition;
    akJ = com.google.android.gms.maps.internal.a.a(paramByte3);
    akK = com.google.android.gms.maps.internal.a.a(paramByte4);
    akL = com.google.android.gms.maps.internal.a.a(paramByte5);
    akM = com.google.android.gms.maps.internal.a.a(paramByte6);
    akN = com.google.android.gms.maps.internal.a.a(paramByte7);
    akO = com.google.android.gms.maps.internal.a.a(paramByte8);
    akP = com.google.android.gms.maps.internal.a.a(paramByte9);
    akQ = com.google.android.gms.maps.internal.a.a(paramByte10);
  }
  
  public static GoogleMapOptions createFromAttributes(Context paramContext, AttributeSet paramAttributeSet)
  {
    if (paramAttributeSet == null) {
      return null;
    }
    TypedArray localTypedArray = paramContext.getResources().obtainAttributes(paramAttributeSet, R.styleable.MapAttrs);
    GoogleMapOptions localGoogleMapOptions = new GoogleMapOptions();
    if (localTypedArray.hasValue(R.styleable.MapAttrs_mapType)) {
      localGoogleMapOptions.mapType(localTypedArray.getInt(R.styleable.MapAttrs_mapType, -1));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_zOrderOnTop)) {
      localGoogleMapOptions.zOrderOnTop(localTypedArray.getBoolean(R.styleable.MapAttrs_zOrderOnTop, false));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_useViewLifecycle)) {
      localGoogleMapOptions.useViewLifecycleInFragment(localTypedArray.getBoolean(R.styleable.MapAttrs_useViewLifecycle, false));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiCompass)) {
      localGoogleMapOptions.compassEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiCompass, true));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiRotateGestures)) {
      localGoogleMapOptions.rotateGesturesEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiRotateGestures, true));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiScrollGestures)) {
      localGoogleMapOptions.scrollGesturesEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiScrollGestures, true));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiTiltGestures)) {
      localGoogleMapOptions.tiltGesturesEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiTiltGestures, true));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiZoomGestures)) {
      localGoogleMapOptions.zoomGesturesEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiZoomGestures, true));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiZoomControls)) {
      localGoogleMapOptions.zoomControlsEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiZoomControls, true));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_liteMode)) {
      localGoogleMapOptions.liteMode(localTypedArray.getBoolean(R.styleable.MapAttrs_liteMode, false));
    }
    if (localTypedArray.hasValue(R.styleable.MapAttrs_uiMapToolbar)) {
      localGoogleMapOptions.mapToolbarEnabled(localTypedArray.getBoolean(R.styleable.MapAttrs_uiMapToolbar, true));
    }
    localGoogleMapOptions.camera(CameraPosition.createFromAttributes(paramContext, paramAttributeSet));
    localTypedArray.recycle();
    return localGoogleMapOptions;
  }
  
  public GoogleMapOptions camera(CameraPosition paramCameraPosition)
  {
    akI = paramCameraPosition;
    return this;
  }
  
  public GoogleMapOptions compassEnabled(boolean paramBoolean)
  {
    akK = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public CameraPosition getCamera()
  {
    return akI;
  }
  
  public Boolean getCompassEnabled()
  {
    return akK;
  }
  
  public Boolean getLiteMode()
  {
    return akP;
  }
  
  public Boolean getMapToolbarEnabled()
  {
    return akQ;
  }
  
  public int getMapType()
  {
    return akH;
  }
  
  public Boolean getRotateGesturesEnabled()
  {
    return akO;
  }
  
  public Boolean getScrollGesturesEnabled()
  {
    return akL;
  }
  
  public Boolean getTiltGesturesEnabled()
  {
    return akN;
  }
  
  public Boolean getUseViewLifecycleInFragment()
  {
    return akG;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public Boolean getZOrderOnTop()
  {
    return akF;
  }
  
  public Boolean getZoomControlsEnabled()
  {
    return akJ;
  }
  
  public Boolean getZoomGesturesEnabled()
  {
    return akM;
  }
  
  public GoogleMapOptions liteMode(boolean paramBoolean)
  {
    akP = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions mapToolbarEnabled(boolean paramBoolean)
  {
    akQ = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions mapType(int paramInt)
  {
    akH = paramInt;
    return this;
  }
  
  byte nD()
  {
    return com.google.android.gms.maps.internal.a.c(akF);
  }
  
  byte nE()
  {
    return com.google.android.gms.maps.internal.a.c(akG);
  }
  
  byte nF()
  {
    return com.google.android.gms.maps.internal.a.c(akJ);
  }
  
  byte nG()
  {
    return com.google.android.gms.maps.internal.a.c(akK);
  }
  
  byte nH()
  {
    return com.google.android.gms.maps.internal.a.c(akL);
  }
  
  byte nI()
  {
    return com.google.android.gms.maps.internal.a.c(akM);
  }
  
  byte nJ()
  {
    return com.google.android.gms.maps.internal.a.c(akN);
  }
  
  byte nK()
  {
    return com.google.android.gms.maps.internal.a.c(akO);
  }
  
  byte nL()
  {
    return com.google.android.gms.maps.internal.a.c(akP);
  }
  
  byte nM()
  {
    return com.google.android.gms.maps.internal.a.c(akQ);
  }
  
  public GoogleMapOptions rotateGesturesEnabled(boolean paramBoolean)
  {
    akO = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions scrollGesturesEnabled(boolean paramBoolean)
  {
    akL = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions tiltGesturesEnabled(boolean paramBoolean)
  {
    akN = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions useViewLifecycleInFragment(boolean paramBoolean)
  {
    akG = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (aa.ob())
    {
      b.a(this, paramParcel, paramInt);
      return;
    }
    a.a(this, paramParcel, paramInt);
  }
  
  public GoogleMapOptions zOrderOnTop(boolean paramBoolean)
  {
    akF = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions zoomControlsEnabled(boolean paramBoolean)
  {
    akJ = Boolean.valueOf(paramBoolean);
    return this;
  }
  
  public GoogleMapOptions zoomGesturesEnabled(boolean paramBoolean)
  {
    akM = Boolean.valueOf(paramBoolean);
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.GoogleMapOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */