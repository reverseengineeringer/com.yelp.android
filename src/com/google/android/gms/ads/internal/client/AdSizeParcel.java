package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.d;
import com.google.android.gms.ads.g;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fv;

@fv
public class AdSizeParcel
  implements SafeParcelable
{
  public static final r CREATOR = new r();
  public final int a;
  public final String b;
  public final int c;
  public final int d;
  public final boolean e;
  public final int f;
  public final int g;
  public final AdSizeParcel[] h;
  public final boolean i;
  public final boolean j;
  public boolean k;
  
  public AdSizeParcel()
  {
    this(5, "interstitial_mb", 0, 0, true, 0, 0, null, false, false, false);
  }
  
  AdSizeParcel(int paramInt1, String paramString, int paramInt2, int paramInt3, boolean paramBoolean1, int paramInt4, int paramInt5, AdSizeParcel[] paramArrayOfAdSizeParcel, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4)
  {
    a = paramInt1;
    b = paramString;
    c = paramInt2;
    d = paramInt3;
    e = paramBoolean1;
    f = paramInt4;
    g = paramInt5;
    h = paramArrayOfAdSizeParcel;
    i = paramBoolean2;
    j = paramBoolean3;
    k = paramBoolean4;
  }
  
  public AdSizeParcel(Context paramContext, d paramd)
  {
    this(paramContext, new d[] { paramd });
  }
  
  public AdSizeParcel(Context paramContext, d[] paramArrayOfd)
  {
    d locald = paramArrayOfd[0];
    a = 5;
    e = false;
    j = locald.c();
    int n;
    label66:
    int i1;
    label78:
    DisplayMetrics localDisplayMetrics;
    label129:
    int i2;
    int m;
    if (j)
    {
      f = d.a.b();
      c = d.a.a();
      if (f != -1) {
        break label312;
      }
      n = 1;
      if (c != -2) {
        break label318;
      }
      i1 = 1;
      localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      if (n == 0) {
        break label336;
      }
      if ((!v.a().c(paramContext)) || (!v.a().d(paramContext))) {
        break label324;
      }
      g = (a(localDisplayMetrics) - v.a().e(paramContext));
      double d1 = g / density;
      i2 = (int)d1;
      m = i2;
      if (d1 - (int)d1 >= 0.01D) {
        m = i2 + 1;
      }
      label168:
      if (i1 == 0) {
        break label361;
      }
      i2 = c(localDisplayMetrics);
      label180:
      d = v.a().a(localDisplayMetrics, i2);
      if ((n == 0) && (i1 == 0)) {
        break label370;
      }
      b = (m + "x" + i2 + "_as");
    }
    for (;;)
    {
      if (paramArrayOfd.length <= 1) {
        break label398;
      }
      h = new AdSizeParcel[paramArrayOfd.length];
      m = 0;
      while (m < paramArrayOfd.length)
      {
        h[m] = new AdSizeParcel(paramContext, paramArrayOfd[m]);
        m += 1;
      }
      f = locald.b();
      c = locald.a();
      break;
      label312:
      n = 0;
      break label66;
      label318:
      i1 = 0;
      break label78;
      label324:
      g = a(localDisplayMetrics);
      break label129;
      label336:
      m = f;
      g = v.a().a(localDisplayMetrics, f);
      break label168;
      label361:
      i2 = c;
      break label180;
      label370:
      if (j) {
        b = "320x50_mb";
      } else {
        b = locald.toString();
      }
    }
    label398:
    h = null;
    i = false;
    k = false;
  }
  
  public AdSizeParcel(AdSizeParcel paramAdSizeParcel, AdSizeParcel[] paramArrayOfAdSizeParcel)
  {
    this(5, b, c, d, e, f, g, paramArrayOfAdSizeParcel, i, j, k);
  }
  
  public static int a(DisplayMetrics paramDisplayMetrics)
  {
    return widthPixels;
  }
  
  public static AdSizeParcel a()
  {
    return new AdSizeParcel(5, "reward_mb", 0, 0, true, 0, 0, null, false, false, false);
  }
  
  public static AdSizeParcel a(Context paramContext)
  {
    return new AdSizeParcel(5, "320x50_mb", 0, 0, false, 0, 0, null, true, false, false);
  }
  
  public static int b(DisplayMetrics paramDisplayMetrics)
  {
    return (int)(c(paramDisplayMetrics) * density);
  }
  
  private static int c(DisplayMetrics paramDisplayMetrics)
  {
    int m = (int)(heightPixels / density);
    if (m <= 400) {
      return 32;
    }
    if (m <= 720) {
      return 50;
    }
    return 90;
  }
  
  public void a(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public d b()
  {
    return g.a(f, c, b);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    r.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.AdSizeParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */