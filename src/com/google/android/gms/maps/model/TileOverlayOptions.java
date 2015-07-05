package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.aa;
import com.google.android.gms.maps.model.internal.o;
import com.google.android.gms.maps.model.internal.o.a;

public final class TileOverlayOptions
  implements SafeParcelable
{
  public static final w CREATOR = new w();
  private final int CK;
  private float alX;
  private boolean alY = true;
  private o amD;
  private TileProvider amE;
  private boolean amF = true;
  
  public TileOverlayOptions()
  {
    CK = 1;
  }
  
  TileOverlayOptions(int paramInt, IBinder paramIBinder, boolean paramBoolean1, float paramFloat, boolean paramBoolean2)
  {
    CK = paramInt;
    amD = o.a.bE(paramIBinder);
    if (amD == null) {}
    for (paramIBinder = null;; paramIBinder = new TileOverlayOptions.1(this))
    {
      amE = paramIBinder;
      alY = paramBoolean1;
      alX = paramFloat;
      amF = paramBoolean2;
      return;
    }
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public TileOverlayOptions fadeIn(boolean paramBoolean)
  {
    amF = paramBoolean;
    return this;
  }
  
  public boolean getFadeIn()
  {
    return amF;
  }
  
  public TileProvider getTileProvider()
  {
    return amE;
  }
  
  int getVersionCode()
  {
    return CK;
  }
  
  public float getZIndex()
  {
    return alX;
  }
  
  public boolean isVisible()
  {
    return alY;
  }
  
  IBinder og()
  {
    return amD.asBinder();
  }
  
  public TileOverlayOptions tileProvider(TileProvider paramTileProvider)
  {
    amE = paramTileProvider;
    if (amE == null) {}
    for (paramTileProvider = null;; paramTileProvider = new TileOverlayOptions.2(this, paramTileProvider))
    {
      amD = paramTileProvider;
      return this;
    }
  }
  
  public TileOverlayOptions visible(boolean paramBoolean)
  {
    alY = paramBoolean;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (aa.ob())
    {
      x.a(this, paramParcel, paramInt);
      return;
    }
    w.a(this, paramParcel, paramInt);
  }
  
  public TileOverlayOptions zIndex(float paramFloat)
  {
    alX = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.TileOverlayOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */