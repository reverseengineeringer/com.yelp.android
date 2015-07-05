package com.google.android.gms.internal;

import android.content.Context;
import android.content.res.Resources;
import android.os.Parcel;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.a;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;

@ey
public final class ay
  implements SafeParcelable
{
  public static final az CREATOR = new az();
  public final int height;
  public final int heightPixels;
  public final String op;
  public final boolean oq;
  public final ay[] or;
  public final int versionCode;
  public final int width;
  public final int widthPixels;
  
  public ay()
  {
    this(2, "interstitial_mb", 0, 0, true, 0, 0, null);
  }
  
  ay(int paramInt1, String paramString, int paramInt2, int paramInt3, boolean paramBoolean, int paramInt4, int paramInt5, ay[] paramArrayOfay)
  {
    versionCode = paramInt1;
    op = paramString;
    height = paramInt2;
    heightPixels = paramInt3;
    oq = paramBoolean;
    width = paramInt4;
    widthPixels = paramInt5;
    or = paramArrayOfay;
  }
  
  public ay(Context paramContext, AdSize paramAdSize)
  {
    this(paramContext, new AdSize[] { paramAdSize });
  }
  
  public ay(Context paramContext, AdSize[] paramArrayOfAdSize)
  {
    AdSize localAdSize = paramArrayOfAdSize[0];
    versionCode = 2;
    oq = false;
    width = localAdSize.getWidth();
    height = localAdSize.getHeight();
    int i;
    int j;
    label62:
    DisplayMetrics localDisplayMetrics;
    int k;
    label98:
    int m;
    if (width == -1)
    {
      i = 1;
      if (height != -2) {
        break label217;
      }
      j = 1;
      localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
      if (i == 0) {
        break label223;
      }
      widthPixels = a(localDisplayMetrics);
      k = (int)(widthPixels / density);
      if (j == 0) {
        break label245;
      }
      m = c(localDisplayMetrics);
      label110:
      heightPixels = gq.a(localDisplayMetrics, m);
      if ((i == 0) && (j == 0)) {
        break label254;
      }
    }
    label217:
    label223:
    label245:
    label254:
    for (op = (k + "x" + m + "_as");; op = localAdSize.toString())
    {
      if (paramArrayOfAdSize.length <= 1) {
        break label266;
      }
      or = new ay[paramArrayOfAdSize.length];
      i = n;
      while (i < paramArrayOfAdSize.length)
      {
        or[i] = new ay(paramContext, paramArrayOfAdSize[i]);
        i += 1;
      }
      i = 0;
      break;
      j = 0;
      break label62;
      k = width;
      widthPixels = gq.a(localDisplayMetrics, width);
      break label98;
      m = height;
      break label110;
    }
    label266:
    or = null;
  }
  
  public ay(ay paramay, ay[] paramArrayOfay)
  {
    this(2, op, height, heightPixels, oq, width, widthPixels, paramArrayOfay);
  }
  
  public static int a(DisplayMetrics paramDisplayMetrics)
  {
    return widthPixels;
  }
  
  public static int b(DisplayMetrics paramDisplayMetrics)
  {
    return (int)(c(paramDisplayMetrics) * density);
  }
  
  private static int c(DisplayMetrics paramDisplayMetrics)
  {
    int i = (int)(heightPixels / density);
    if (i <= 400) {
      return 32;
    }
    if (i <= 720) {
      return 50;
    }
    return 90;
  }
  
  public AdSize bh()
  {
    return a.a(width, height, op);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    az.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ay
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */