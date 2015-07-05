package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.dynamic.d.a;
import com.google.android.gms.internal.jx;
import com.google.android.gms.maps.internal.aa;

public final class GroundOverlayOptions
  implements SafeParcelable
{
  public static final e CREATOR = new e();
  public static final float NO_DIMENSION = -1.0F;
  private final int CK;
  private float alQ;
  private float alX;
  private boolean alY = true;
  private BitmapDescriptor ama;
  private LatLng amb;
  private float amc;
  private float amd;
  private LatLngBounds ame;
  private float amf = 0.0F;
  private float amg = 0.5F;
  private float amh = 0.5F;
  
  public GroundOverlayOptions()
  {
    CK = 1;
  }
  
  GroundOverlayOptions(int paramInt, IBinder paramIBinder, LatLng paramLatLng, float paramFloat1, float paramFloat2, LatLngBounds paramLatLngBounds, float paramFloat3, float paramFloat4, boolean paramBoolean, float paramFloat5, float paramFloat6, float paramFloat7)
  {
    CK = paramInt;
    ama = new BitmapDescriptor(d.a.ap(paramIBinder));
    amb = paramLatLng;
    amc = paramFloat1;
    amd = paramFloat2;
    ame = paramLatLngBounds;
    alQ = paramFloat3;
    alX = paramFloat4;
    alY = paramBoolean;
    amf = paramFloat5;
    amg = paramFloat6;
    amh = paramFloat7;
  }
  
  private GroundOverlayOptions a(LatLng paramLatLng, float paramFloat1, float paramFloat2)
  {
    amb = paramLatLng;
    amc = paramFloat1;
    amd = paramFloat2;
    return this;
  }
  
  public GroundOverlayOptions anchor(float paramFloat1, float paramFloat2)
  {
    amg = paramFloat1;
    amh = paramFloat2;
    return this;
  }
  
  public GroundOverlayOptions bearing(float paramFloat)
  {
    alQ = ((paramFloat % 360.0F + 360.0F) % 360.0F);
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public float getAnchorU()
  {
    return amg;
  }
  
  public float getAnchorV()
  {
    return amh;
  }
  
  public float getBearing()
  {
    return alQ;
  }
  
  public LatLngBounds getBounds()
  {
    return ame;
  }
  
  public float getHeight()
  {
    return amd;
  }
  
  public BitmapDescriptor getImage()
  {
    return ama;
  }
  
  public LatLng getLocation()
  {
    return amb;
  }
  
  public float getTransparency()
  {
    return amf;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public float getWidth()
  {
    return amc;
  }
  
  public float getZIndex()
  {
    return alX;
  }
  
  public GroundOverlayOptions image(BitmapDescriptor paramBitmapDescriptor)
  {
    ama = paramBitmapDescriptor;
    return this;
  }
  
  public boolean isVisible()
  {
    return alY;
  }
  
  IBinder od()
  {
    return ama.nA().asBinder();
  }
  
  public GroundOverlayOptions position(LatLng paramLatLng, float paramFloat)
  {
    boolean bool2 = true;
    if (ame == null)
    {
      bool1 = true;
      jx.a(bool1, "Position has already been set using positionFromBounds");
      if (paramLatLng == null) {
        break label59;
      }
      bool1 = true;
      label24:
      jx.b(bool1, "Location must be specified");
      if (paramFloat < 0.0F) {
        break label64;
      }
    }
    label59:
    label64:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      jx.b(bool1, "Width must be non-negative");
      return a(paramLatLng, paramFloat, -1.0F);
      bool1 = false;
      break;
      bool1 = false;
      break label24;
    }
  }
  
  public GroundOverlayOptions position(LatLng paramLatLng, float paramFloat1, float paramFloat2)
  {
    boolean bool2 = true;
    if (ame == null)
    {
      bool1 = true;
      jx.a(bool1, "Position has already been set using positionFromBounds");
      if (paramLatLng == null) {
        break label81;
      }
      bool1 = true;
      label27:
      jx.b(bool1, "Location must be specified");
      if (paramFloat1 < 0.0F) {
        break label87;
      }
      bool1 = true;
      label43:
      jx.b(bool1, "Width must be non-negative");
      if (paramFloat2 < 0.0F) {
        break label93;
      }
    }
    label81:
    label87:
    label93:
    for (boolean bool1 = bool2;; bool1 = false)
    {
      jx.b(bool1, "Height must be non-negative");
      return a(paramLatLng, paramFloat1, paramFloat2);
      bool1 = false;
      break;
      bool1 = false;
      break label27;
      bool1 = false;
      break label43;
    }
  }
  
  public GroundOverlayOptions positionFromBounds(LatLngBounds paramLatLngBounds)
  {
    if (amb == null) {}
    for (boolean bool = true;; bool = false)
    {
      jx.a(bool, "Position has already been set using position: " + amb);
      ame = paramLatLngBounds;
      return this;
    }
  }
  
  public GroundOverlayOptions transparency(float paramFloat)
  {
    if ((paramFloat >= 0.0F) && (paramFloat <= 1.0F)) {}
    for (boolean bool = true;; bool = false)
    {
      jx.b(bool, "Transparency must be in the range [0..1]");
      amf = paramFloat;
      return this;
    }
  }
  
  public GroundOverlayOptions visible(boolean paramBoolean)
  {
    alY = paramBoolean;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (aa.ob())
    {
      f.a(this, paramParcel, paramInt);
      return;
    }
    e.a(this, paramParcel, paramInt);
  }
  
  public GroundOverlayOptions zIndex(float paramFloat)
  {
    alX = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.GroundOverlayOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */