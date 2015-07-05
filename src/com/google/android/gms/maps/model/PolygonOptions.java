package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.maps.internal.aa;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

public final class PolygonOptions
  implements SafeParcelable
{
  public static final m CREATOR = new m();
  private final int CK;
  private float alU = 10.0F;
  private int alV = -16777216;
  private int alW = 0;
  private float alX = 0.0F;
  private boolean alY = true;
  private final List<LatLng> amx;
  private final List<List<LatLng>> amy;
  private boolean amz = false;
  
  public PolygonOptions()
  {
    CK = 1;
    amx = new ArrayList();
    amy = new ArrayList();
  }
  
  PolygonOptions(int paramInt1, List<LatLng> paramList, List paramList1, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2)
  {
    CK = paramInt1;
    amx = paramList;
    amy = paramList1;
    alU = paramFloat1;
    alV = paramInt2;
    alW = paramInt3;
    alX = paramFloat2;
    alY = paramBoolean1;
    amz = paramBoolean2;
  }
  
  public PolygonOptions add(LatLng paramLatLng)
  {
    amx.add(paramLatLng);
    return this;
  }
  
  public PolygonOptions add(LatLng... paramVarArgs)
  {
    amx.addAll(Arrays.asList(paramVarArgs));
    return this;
  }
  
  public PolygonOptions addAll(Iterable<LatLng> paramIterable)
  {
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext())
    {
      LatLng localLatLng = (LatLng)paramIterable.next();
      amx.add(localLatLng);
    }
    return this;
  }
  
  public PolygonOptions addHole(Iterable<LatLng> paramIterable)
  {
    ArrayList localArrayList = new ArrayList();
    paramIterable = paramIterable.iterator();
    while (paramIterable.hasNext()) {
      localArrayList.add((LatLng)paramIterable.next());
    }
    amy.add(localArrayList);
    return this;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public PolygonOptions fillColor(int paramInt)
  {
    alW = paramInt;
    return this;
  }
  
  public PolygonOptions geodesic(boolean paramBoolean)
  {
    amz = paramBoolean;
    return this;
  }
  
  public int getFillColor()
  {
    return alW;
  }
  
  public List<List<LatLng>> getHoles()
  {
    return amy;
  }
  
  public List<LatLng> getPoints()
  {
    return amx;
  }
  
  public int getStrokeColor()
  {
    return alV;
  }
  
  public float getStrokeWidth()
  {
    return alU;
  }
  
  int getVersionCode()
  {
    return CK;
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
  
  List of()
  {
    return amy;
  }
  
  public PolygonOptions strokeColor(int paramInt)
  {
    alV = paramInt;
    return this;
  }
  
  public PolygonOptions strokeWidth(float paramFloat)
  {
    alU = paramFloat;
    return this;
  }
  
  public PolygonOptions visible(boolean paramBoolean)
  {
    alY = paramBoolean;
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    if (aa.ob())
    {
      n.a(this, paramParcel, paramInt);
      return;
    }
    m.a(this, paramParcel, paramInt);
  }
  
  public PolygonOptions zIndex(float paramFloat)
  {
    alX = paramFloat;
    return this;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.PolygonOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */