package com.google.android.gms.internal;

import android.location.Location;
import com.google.android.gms.ads.formats.b;
import com.google.android.gms.ads.formats.b.a;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.yelp.android.bc.l;
import java.util.Date;
import java.util.List;
import java.util.Set;

@fv
public final class ee
  implements l
{
  private final Date a;
  private final int b;
  private final Set<String> c;
  private final boolean d;
  private final Location e;
  private final int f;
  private final NativeAdOptionsParcel g;
  private final List<String> h;
  private final boolean i;
  
  public ee(Date paramDate, int paramInt1, Set<String> paramSet, Location paramLocation, boolean paramBoolean1, int paramInt2, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList, boolean paramBoolean2)
  {
    a = paramDate;
    b = paramInt1;
    c = paramSet;
    e = paramLocation;
    d = paramBoolean1;
    f = paramInt2;
    g = paramNativeAdOptionsParcel;
    h = paramList;
    i = paramBoolean2;
  }
  
  public Date a()
  {
    return a;
  }
  
  public int b()
  {
    return b;
  }
  
  public Set<String> c()
  {
    return c;
  }
  
  public Location d()
  {
    return e;
  }
  
  public int e()
  {
    return f;
  }
  
  public boolean f()
  {
    return d;
  }
  
  public boolean g()
  {
    return i;
  }
  
  public b h()
  {
    if (g == null) {
      return null;
    }
    return new b.a().a(g.b).a(g.c).b(g.d).a();
  }
  
  public boolean i()
  {
    return (h != null) && (h.contains("2"));
  }
  
  public boolean j()
  {
    return (h != null) && (h.contains("1"));
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ee
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */