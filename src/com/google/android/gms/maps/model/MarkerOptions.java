package com.google.android.gms.maps.model;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.dynamic.c;
import com.google.android.gms.dynamic.c.a;

public final class MarkerOptions
  implements SafeParcelable
{
  public static final j CREATOR = new j();
  private final int a;
  private LatLng b;
  private String c;
  private String d;
  private a e;
  private float f = 0.5F;
  private float g = 1.0F;
  private boolean h;
  private boolean i = true;
  private boolean j = false;
  private float k = 0.0F;
  private float l = 0.5F;
  private float m = 0.0F;
  private float n = 1.0F;
  
  public MarkerOptions()
  {
    a = 1;
  }
  
  MarkerOptions(int paramInt, LatLng paramLatLng, String paramString1, String paramString2, IBinder paramIBinder, float paramFloat1, float paramFloat2, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, float paramFloat3, float paramFloat4, float paramFloat5, float paramFloat6)
  {
    a = paramInt;
    b = paramLatLng;
    c = paramString1;
    d = paramString2;
    if (paramIBinder == null) {}
    for (paramLatLng = null;; paramLatLng = new a(c.a.a(paramIBinder)))
    {
      e = paramLatLng;
      f = paramFloat1;
      g = paramFloat2;
      h = paramBoolean1;
      i = paramBoolean2;
      j = paramBoolean3;
      k = paramFloat3;
      l = paramFloat4;
      m = paramFloat5;
      n = paramFloat6;
      return;
    }
  }
  
  int a()
  {
    return a;
  }
  
  public MarkerOptions a(float paramFloat1, float paramFloat2)
  {
    f = paramFloat1;
    g = paramFloat2;
    return this;
  }
  
  public MarkerOptions a(LatLng paramLatLng)
  {
    b = paramLatLng;
    return this;
  }
  
  public MarkerOptions a(a parama)
  {
    e = parama;
    return this;
  }
  
  public MarkerOptions a(String paramString)
  {
    c = paramString;
    return this;
  }
  
  public MarkerOptions a(boolean paramBoolean)
  {
    h = paramBoolean;
    return this;
  }
  
  IBinder b()
  {
    if (e == null) {
      return null;
    }
    return e.a().asBinder();
  }
  
  public LatLng c()
  {
    return b;
  }
  
  public String d()
  {
    return c;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public String e()
  {
    return d;
  }
  
  public float f()
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
  
  public float k()
  {
    return k;
  }
  
  public float l()
  {
    return l;
  }
  
  public float m()
  {
    return m;
  }
  
  public float n()
  {
    return n;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    j.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.maps.model.MarkerOptions
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */