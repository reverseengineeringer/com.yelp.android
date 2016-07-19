package com.google.android.gms.location.places.internal;

import android.annotation.SuppressLint;
import android.net.Uri;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.common.internal.zzw.zza;
import com.google.android.gms.maps.model.LatLng;
import com.google.android.gms.maps.model.LatLngBounds;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.TimeZone;

public final class PlaceImpl
  implements SafeParcelable, com.google.android.gms.location.places.a
{
  public static final a CREATOR = new a();
  final int a;
  private final String b;
  private final Bundle c;
  @Deprecated
  private final PlaceLocalization d;
  private final LatLng e;
  private final float f;
  private final LatLngBounds g;
  private final String h;
  private final Uri i;
  private final boolean j;
  private final float k;
  private final int l;
  private final long m;
  private final List<Integer> n;
  private final List<Integer> o;
  private final String p;
  private final String q;
  private final String r;
  private final String s;
  private final List<String> t;
  private final Map<Integer, String> u;
  private final TimeZone v;
  private Locale w;
  
  PlaceImpl(int paramInt1, String paramString1, List<Integer> paramList1, List<Integer> paramList2, Bundle paramBundle, String paramString2, String paramString3, String paramString4, String paramString5, List<String> paramList, LatLng paramLatLng, float paramFloat1, LatLngBounds paramLatLngBounds, String paramString6, Uri paramUri, boolean paramBoolean, float paramFloat2, int paramInt2, long paramLong, PlaceLocalization paramPlaceLocalization)
  {
    a = paramInt1;
    b = paramString1;
    o = Collections.unmodifiableList(paramList1);
    n = paramList2;
    if (paramBundle != null)
    {
      c = paramBundle;
      p = paramString2;
      q = paramString3;
      r = paramString4;
      s = paramString5;
      if (paramList == null) {
        break label176;
      }
      label68:
      t = paramList;
      e = paramLatLng;
      f = paramFloat1;
      g = paramLatLngBounds;
      if (paramString6 == null) {
        break label184;
      }
    }
    for (;;)
    {
      h = paramString6;
      i = paramUri;
      j = paramBoolean;
      k = paramFloat2;
      l = paramInt2;
      m = paramLong;
      u = Collections.unmodifiableMap(new HashMap());
      v = null;
      w = null;
      d = paramPlaceLocalization;
      return;
      paramBundle = new Bundle();
      break;
      label176:
      paramList = Collections.emptyList();
      break label68;
      label184:
      paramString6 = "UTC";
    }
  }
  
  public String b()
  {
    return b;
  }
  
  public List<Integer> c()
  {
    return o;
  }
  
  public List<Integer> d()
  {
    return n;
  }
  
  public int describeContents()
  {
    a locala = CREATOR;
    return 0;
  }
  
  public String e()
  {
    return p;
  }
  
  public boolean equals(Object paramObject)
  {
    if (this == paramObject) {}
    do
    {
      return true;
      if (!(paramObject instanceof PlaceImpl)) {
        return false;
      }
      paramObject = (PlaceImpl)paramObject;
    } while ((b.equals(b)) && (zzw.equal(w, w)) && (m == m));
    return false;
  }
  
  public String f()
  {
    return q;
  }
  
  public LatLng g()
  {
    return e;
  }
  
  public float h()
  {
    return f;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { b, w, Long.valueOf(m) });
  }
  
  public LatLngBounds i()
  {
    return g;
  }
  
  public boolean isDataValid()
  {
    return true;
  }
  
  public Uri j()
  {
    return i;
  }
  
  public String k()
  {
    return r;
  }
  
  public String l()
  {
    return s;
  }
  
  public List<String> m()
  {
    return t;
  }
  
  public boolean n()
  {
    return j;
  }
  
  public float o()
  {
    return k;
  }
  
  public int p()
  {
    return l;
  }
  
  public long q()
  {
    return m;
  }
  
  public Bundle r()
  {
    return c;
  }
  
  public String s()
  {
    return h;
  }
  
  @Deprecated
  public PlaceLocalization t()
  {
    return d;
  }
  
  @SuppressLint({"DefaultLocale"})
  public String toString()
  {
    return zzw.zzy(this).zzg("id", b).zzg("placeTypes", o).zzg("locale", w).zzg("name", p).zzg("address", q).zzg("phoneNumber", r).zzg("latlng", e).zzg("viewport", g).zzg("websiteUri", i).zzg("isPermanentlyClosed", Boolean.valueOf(j)).zzg("priceLevel", Integer.valueOf(l)).zzg("timestampSecs", Long.valueOf(m)).toString();
  }
  
  public com.google.android.gms.location.places.a u()
  {
    return this;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    a locala = CREATOR;
    a.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.location.places.internal.PlaceImpl
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */