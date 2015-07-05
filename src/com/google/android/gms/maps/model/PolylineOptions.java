package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.aa;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolylineOptions
  implements SafeParcelable
{
  public static final o CREATOR = new o();
  private final int CK;
  private float alX = 0.0F;
  private boolean alY = true;
  private float amc = 10.0F;
  private final List<LatLng> amx;
  private boolean amz = false;
  private int mColor = -16777216;
  
  public PolylineOptions()
  {
    CK = 1;
    amx = new ArrayList();
  }
  
  PolylineOptions(int paramInt1, List paramList, float paramFloat1, int paramInt2, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    CK = paramInt1;
    amx = paramList;
    amc = paramFloat1;
    mColor = paramInt2;
    alX = paramFloat2;
    alY = paramBoolean1;
    amz = paramBoolean2;
  }
  
  public PolylineOptions add(LatLng paramLatLng)
  {
    amx.add(paramLatLng);
    return this;
  }
  
  public PolylineOptions add(LatLng... paramVarArgs)
  {
    amx.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public PolylineOptions addAll(Iterable<LatLng> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      LatLng localLatLng = (LatLng)paramIterable.next();
      amx.add(localLatLng);
    }
    return this;
  }
  
  public PolylineOptions color(int paramInt)
  {
    mColor = paramInt;
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public PolylineOptions geodesic(boolean paramBoolean)
  {
    amz = paramBoolean;
    return this;
  }
  
  public int getColor()
  {
    return mColor;
  }
  
  public List<LatLng> getPoints()
  {
    return amx;
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
  
  public boolean isGeodesic()
  {
    return amz;
  }
  
  public boolean isVisible()
  {
    return alY;
  }
  
  public PolylineOptions visible(boolean paramBoolean)
  {
    alY = paramBoolean;
    return this;
  }
  
  public PolylineOptions width(float paramFloat)
  {
    amc = paramFloat;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (aa.ob())
    {
      p.a(this, paramParcel, paramInt);
      return;
    }
    o.a(this, paramParcel, paramInt);
  }
  
  public PolylineOptions zIndex(float paramFloat)
  {
    alX = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.PolylineOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */