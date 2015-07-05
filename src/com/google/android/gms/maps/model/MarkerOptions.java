package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.d.a;
import com.google.android.gms.maps.internal.aa;

public final class MarkerOptions
  implements SafeParcelable
{
  public static final k CREATOR = new k();
  private final int CK;
  private String OH;
  private boolean alY = true;
  private LatLng alt;
  private float amg = 0.5F;
  private float amh = 1.0F;
  private String amp;
  private BitmapDescriptor amq;
  private boolean amr;
  private boolean ams = false;
  private float amt = 0.0F;
  private float amu = 0.5F;
  private float amv = 0.0F;
  private float mAlpha = 1.0F;
  
  public MarkerOptions()
  {
    CK = 1;
  }
  
  MarkerOptions(int paramInt, LatLng paramLatLng, String paramString1, String paramString2, IBinder paramIBinder, float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    CK = paramInt;
    alt = paramLatLng;
    OH = paramString1;
    amp = paramString2;
    if (paramIBinder == null) {}
    for (paramLatLng = null;; paramLatLng = new BitmapDescriptor(d.a.ap(paramIBinder)))
    {
      amq = paramLatLng;
      amg = paramFloat1;
      amh = paramFloat2;
      amr = paramBoolean1;
      alY = paramBoolean2;
      ams = paramBoolean3;
      amt = paramFloat3;
      amu = paramFloat4;
      amv = paramFloat5;
      mAlpha = paramFloat6;
      return;
    }
  }
  
  public MarkerOptions alpha(float paramFloat)
  {
    mAlpha = paramFloat;
    return this;
  }
  
  public MarkerOptions anchor(float paramFloat1, float paramFloat2)
  {
    amg = paramFloat1;
    amh = paramFloat2;
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public MarkerOptions draggable(boolean paramBoolean)
  {
    amr = paramBoolean;
    return this;
  }
  
  public MarkerOptions flat(boolean paramBoolean)
  {
    ams = paramBoolean;
    return this;
  }
  
  public float getAlpha()
  {
    return mAlpha;
  }
  
  public float getAnchorU()
  {
    return amg;
  }
  
  public float getAnchorV()
  {
    return amh;
  }
  
  public BitmapDescriptor getIcon()
  {
    return amq;
  }
  
  public float getInfoWindowAnchorU()
  {
    return amu;
  }
  
  public float getInfoWindowAnchorV()
  {
    return amv;
  }
  
  public LatLng getPosition()
  {
    return alt;
  }
  
  public float getRotation()
  {
    return amt;
  }
  
  public String getSnippet()
  {
    return amp;
  }
  
  public String getTitle()
  {
    return OH;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public MarkerOptions icon(BitmapDescriptor paramBitmapDescriptor)
  {
    amq = paramBitmapDescriptor;
    return this;
  }
  
  public MarkerOptions infoWindowAnchor(float paramFloat1, float paramFloat2)
  {
    amu = paramFloat1;
    amv = paramFloat2;
    return this;
  }
  
  public boolean isDraggable()
  {
    return amr;
  }
  
  public boolean isFlat()
  {
    return ams;
  }
  
  public boolean isVisible()
  {
    return alY;
  }
  
  IBinder oe()
  {
    if (amq == null) {
      return null;
    }
    return amq.nA().asBinder();
  }
  
  public MarkerOptions position(LatLng paramLatLng)
  {
    alt = paramLatLng;
    return this;
  }
  
  public MarkerOptions rotation(float paramFloat)
  {
    amt = paramFloat;
    return this;
  }
  
  public MarkerOptions snippet(String paramString)
  {
    amp = paramString;
    return this;
  }
  
  public MarkerOptions title(String paramString)
  {
    OH = paramString;
    return this;
  }
  
  public MarkerOptions visible(boolean paramBoolean)
  {
    alY = paramBoolean;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (aa.ob())
    {
      l.a(this, paramParcel, paramInt);
      return;
    }
    k.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.MarkerOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */