package com.google.android.gms.maps.model;

import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.List;

public final class PolygonOptions
  implements SafeParcelable
{
  public static final l CREATOR = new l();
  private final int a;
  private final List<LatLng> b;
  private final List<List<LatLng>> c;
  private float d = 10.0F;
  private int e = -16777216;
  private int f = 0;
  private float g = 0.0F;
  private boolean h = true;
  private boolean i = false;
  private boolean j = false;
  
  public PolygonOptions()
  {
    a = 1;
    b = new ArrayList();
    c = new ArrayList();
  }
  
  PolygonOptions(int paramInt1, List<LatLng> paramList, List paramList1, float paramFloat1, int paramInt2, int paramInt3, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3)
  {
    a = paramInt1;
    b = paramList;
    c = paramList1;
    d = paramFloat1;
    e = paramInt2;
    f = paramInt3;
    g = paramFloat2;
    h = paramBoolean1;
    i = paramBoolean2;
    j = paramBoolean3;
  }
  
  int a()
  {
    return a;
  }
  
  List b()
  {
    return c;
  }
  
  public List<LatLng> c()
  {
    return b;
  }
  
  public float d()
  {
    return d;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public int e()
  {
    return e;
  }
  
  public int f()
  {
    return f;
  }
  
  public float g()
  {
    return g;
  }
  
  public boolean h()
  {
    return h;
  }
  
  public boolean i()
  {
    return i;
  }
  
  public boolean j()
  {
    return j;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    l.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.PolygonOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */