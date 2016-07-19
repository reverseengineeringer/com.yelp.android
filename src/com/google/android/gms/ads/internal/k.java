package com.google.android.gms.ads.internal;

import android.content.Context;
import android.text.TextUtils;
import com.google.android.gms.ads.internal.client.aa.a;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.y;
import com.google.android.gms.ads.internal.client.z;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.bn;
import com.google.android.gms.internal.bo;
import com.google.android.gms.internal.bp;
import com.google.android.gms.internal.ds;
import com.google.android.gms.internal.fv;
import com.yelp.android.g.i;

@fv
public class k
  extends aa.a
{
  private y a;
  private bm b;
  private bn c;
  private i<String, bo> d;
  private i<String, bp> e;
  private NativeAdOptionsParcel f;
  private af g;
  private final Context h;
  private final ds i;
  private final String j;
  private final VersionInfoParcel k;
  private final e l;
  
  public k(Context paramContext, String paramString, ds paramds, VersionInfoParcel paramVersionInfoParcel, e parame)
  {
    h = paramContext;
    j = paramString;
    i = paramds;
    k = paramVersionInfoParcel;
    e = new i();
    d = new i();
    l = parame;
  }
  
  public z a()
  {
    return new j(h, j, i, k, a, b, c, e, d, f, g, l);
  }
  
  public void a(af paramaf)
  {
    g = paramaf;
  }
  
  public void a(y paramy)
  {
    a = paramy;
  }
  
  public void a(NativeAdOptionsParcel paramNativeAdOptionsParcel)
  {
    f = paramNativeAdOptionsParcel;
  }
  
  public void a(bm parambm)
  {
    b = parambm;
  }
  
  public void a(bn parambn)
  {
    c = parambn;
  }
  
  public void a(String paramString, bp parambp, bo parambo)
  {
    if (TextUtils.isEmpty(paramString)) {
      throw new IllegalArgumentException("Custom template ID for native custom template ad is empty. Please provide a valid template id.");
    }
    e.put(paramString, parambp);
    d.put(paramString, parambo);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.k
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */