package com.google.android.gms.ads.internal.request;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.os.Bundle;
import android.os.Messenger;
import android.os.Parcel;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.fv;
import java.util.Collections;
import java.util.List;

@fv
public final class AdRequestInfoParcel
  implements SafeParcelable
{
  public static final e CREATOR = new e();
  public final List<String> A;
  public final long B;
  public final CapabilityParcel C;
  public final String D;
  public final float E;
  public final int F;
  public final int G;
  public final int a;
  public final Bundle b;
  public final AdRequestParcel c;
  public final AdSizeParcel d;
  public final String e;
  public final ApplicationInfo f;
  public final PackageInfo g;
  public final String h;
  public final String i;
  public final String j;
  public final VersionInfoParcel k;
  public final Bundle l;
  public final int m;
  public final List<String> n;
  public final Bundle o;
  public final boolean p;
  public final Messenger q;
  public final int r;
  public final int s;
  public final float t;
  public final String u;
  public final long v;
  public final String w;
  public final List<String> x;
  public final String y;
  public final NativeAdOptionsParcel z;
  
  AdRequestInfoParcel(int paramInt1, Bundle paramBundle1, AdRequestParcel paramAdRequestParcel, AdSizeParcel paramAdSizeParcel, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, String paramString4, VersionInfoParcel paramVersionInfoParcel, Bundle paramBundle2, int paramInt2, List<String> paramList1, Bundle paramBundle3, boolean paramBoolean, Messenger paramMessenger, int paramInt3, int paramInt4, float paramFloat1, String paramString5, long paramLong1, String paramString6, List<String> paramList2, String paramString7, NativeAdOptionsParcel paramNativeAdOptionsParcel, List<String> paramList3, long paramLong2, CapabilityParcel paramCapabilityParcel, String paramString8, float paramFloat2, int paramInt5, int paramInt6)
  {
    a = paramInt1;
    b = paramBundle1;
    c = paramAdRequestParcel;
    d = paramAdSizeParcel;
    e = paramString1;
    f = paramApplicationInfo;
    g = paramPackageInfo;
    h = paramString2;
    i = paramString3;
    j = paramString4;
    k = paramVersionInfoParcel;
    l = paramBundle2;
    m = paramInt2;
    n = paramList1;
    if (paramList3 == null)
    {
      paramBundle1 = Collections.emptyList();
      A = paramBundle1;
      o = paramBundle3;
      p = paramBoolean;
      q = paramMessenger;
      r = paramInt3;
      s = paramInt4;
      t = paramFloat1;
      u = paramString5;
      v = paramLong1;
      w = paramString6;
      if (paramList2 != null) {
        break label225;
      }
    }
    label225:
    for (paramBundle1 = Collections.emptyList();; paramBundle1 = Collections.unmodifiableList(paramList2))
    {
      x = paramBundle1;
      y = paramString7;
      z = paramNativeAdOptionsParcel;
      B = paramLong2;
      C = paramCapabilityParcel;
      D = paramString8;
      E = paramFloat2;
      F = paramInt5;
      G = paramInt6;
      return;
      paramBundle1 = Collections.unmodifiableList(paramList3);
      break;
    }
  }
  
  public AdRequestInfoParcel(Bundle paramBundle1, AdRequestParcel paramAdRequestParcel, AdSizeParcel paramAdSizeParcel, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, String paramString4, VersionInfoParcel paramVersionInfoParcel, Bundle paramBundle2, int paramInt1, List<String> paramList1, List<String> paramList2, Bundle paramBundle3, boolean paramBoolean, Messenger paramMessenger, int paramInt2, int paramInt3, float paramFloat1, String paramString5, long paramLong1, String paramString6, List<String> paramList3, String paramString7, NativeAdOptionsParcel paramNativeAdOptionsParcel, long paramLong2, CapabilityParcel paramCapabilityParcel, String paramString8, float paramFloat2, int paramInt4, int paramInt5)
  {
    this(15, paramBundle1, paramAdRequestParcel, paramAdSizeParcel, paramString1, paramApplicationInfo, paramPackageInfo, paramString2, paramString3, paramString4, paramVersionInfoParcel, paramBundle2, paramInt1, paramList1, paramBundle3, paramBoolean, paramMessenger, paramInt2, paramInt3, paramFloat1, paramString5, paramLong1, paramString6, paramList3, paramString7, paramNativeAdOptionsParcel, paramList2, paramLong2, paramCapabilityParcel, paramString8, paramFloat2, paramInt4, paramInt5);
  }
  
  public AdRequestInfoParcel(a parama, String paramString, long paramLong)
  {
    this(a, b, c, d, e, f, paramString, g, h, j, i, k, l, m, n, o, p, q, r, s, t, u, v, w, x, y, paramLong, z, A, B, C, D);
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    e.a(this, paramParcel, paramInt);
  }
  
  @fv
  public static final class a
  {
    public final String A;
    public final float B;
    public final int C;
    public final int D;
    public final Bundle a;
    public final AdRequestParcel b;
    public final AdSizeParcel c;
    public final String d;
    public final ApplicationInfo e;
    public final PackageInfo f;
    public final String g;
    public final String h;
    public final Bundle i;
    public final VersionInfoParcel j;
    public final int k;
    public final List<String> l;
    public final List<String> m;
    public final Bundle n;
    public final boolean o;
    public final Messenger p;
    public final int q;
    public final int r;
    public final float s;
    public final String t;
    public final long u;
    public final String v;
    public final List<String> w;
    public final String x;
    public final NativeAdOptionsParcel y;
    public final CapabilityParcel z;
    
    public a(Bundle paramBundle1, AdRequestParcel paramAdRequestParcel, AdSizeParcel paramAdSizeParcel, String paramString1, ApplicationInfo paramApplicationInfo, PackageInfo paramPackageInfo, String paramString2, String paramString3, VersionInfoParcel paramVersionInfoParcel, Bundle paramBundle2, List<String> paramList1, List<String> paramList2, Bundle paramBundle3, boolean paramBoolean, Messenger paramMessenger, int paramInt1, int paramInt2, float paramFloat1, String paramString4, long paramLong, String paramString5, List<String> paramList3, String paramString6, NativeAdOptionsParcel paramNativeAdOptionsParcel, CapabilityParcel paramCapabilityParcel, String paramString7, float paramFloat2, int paramInt3, int paramInt4)
    {
      a = paramBundle1;
      b = paramAdRequestParcel;
      c = paramAdSizeParcel;
      d = paramString1;
      e = paramApplicationInfo;
      f = paramPackageInfo;
      g = paramString2;
      h = paramString3;
      j = paramVersionInfoParcel;
      i = paramBundle2;
      o = paramBoolean;
      p = paramMessenger;
      q = paramInt1;
      r = paramInt2;
      s = paramFloat1;
      if ((paramList1 != null) && (paramList1.size() > 0))
      {
        k = 3;
        l = paramList1;
        m = paramList2;
        n = paramBundle3;
        t = paramString4;
        u = paramLong;
        v = paramString5;
        w = paramList3;
        x = paramString6;
        y = paramNativeAdOptionsParcel;
        z = paramCapabilityParcel;
        A = paramString7;
        B = paramFloat2;
        C = paramInt3;
        D = paramInt4;
        return;
      }
      if (k) {}
      for (k = 4;; k = 0)
      {
        l = null;
        m = null;
        break;
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.request.AdRequestInfoParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */