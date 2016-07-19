package com.google.android.gms.ads;

import android.content.Context;
import android.content.res.Resources;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.util.client.a;

public final class d
{
  public static final d a = new d(320, 50, "320x50_mb");
  public static final d b = new d(468, 60, "468x60_as");
  public static final d c = new d(320, 100, "320x100_as");
  public static final d d = new d(728, 90, "728x90_as");
  public static final d e = new d(300, 250, "300x250_as");
  public static final d f = new d(160, 600, "160x600_as");
  public static final d g = new d(-1, -2, "smart_banner");
  public static final d h = new d(-3, -4, "fluid");
  private final int i;
  private final int j;
  private final String k;
  
  public d(int paramInt1, int paramInt2) {}
  
  d(int paramInt1, int paramInt2, String paramString)
  {
    if ((paramInt1 < 0) && (paramInt1 != -1) && (paramInt1 != -3)) {
      throw new IllegalArgumentException("Invalid width for AdSize: " + paramInt1);
    }
    if ((paramInt2 < 0) && (paramInt2 != -2) && (paramInt2 != -4)) {
      throw new IllegalArgumentException("Invalid height for AdSize: " + paramInt2);
    }
    i = paramInt1;
    j = paramInt2;
    k = paramString;
  }
  
  public int a()
  {
    return j;
  }
  
  public int a(Context paramContext)
  {
    switch (j)
    {
    default: 
      return v.a().a(paramContext, j);
    case -2: 
      return AdSizeParcel.b(paramContext.getResources().getDisplayMetrics());
    }
    return -1;
  }
  
  public int b()
  {
    return i;
  }
  
  public int b(Context paramContext)
  {
    switch (i)
    {
    case -2: 
    default: 
      return v.a().a(paramContext, i);
    case -1: 
      return AdSizeParcel.a(paramContext.getResources().getDisplayMetrics());
    }
    return -1;
  }
  
  public boolean c()
  {
    return (i == -3) && (j == -4);
  }
  
  public boolean equals(Object paramObject)
  {
    if (paramObject == this) {}
    do
    {
      return true;
      if (!(paramObject instanceof d)) {
        return false;
      }
      paramObject = (d)paramObject;
    } while ((i == i) && (j == j) && (k.equals(k)));
    return false;
  }
  
  public int hashCode()
  {
    return k.hashCode();
  }
  
  public String toString()
  {
    return k;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */