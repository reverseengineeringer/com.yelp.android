package com.google.android.gms.internal;

import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.h.a;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import java.util.Collections;
import java.util.List;
import org.json.JSONObject;

@fv
public class gr
{
  public final String A;
  public final h.a B;
  public boolean C = false;
  public boolean D = false;
  public final AdRequestParcel a;
  public final ib b;
  public final List<String> c;
  public final int d;
  public final List<String> e;
  public final List<String> f;
  public final int g;
  public final long h;
  public final String i;
  public final JSONObject j;
  public final boolean k;
  public boolean l;
  public final boolean m;
  public final di n;
  public final dt o;
  public final String p;
  public final dj q;
  public final dl r;
  public final long s;
  public final AdSizeParcel t;
  public final long u;
  public final RewardItemParcel v;
  public final List<String> w;
  public final List<String> x;
  public final long y;
  public final long z;
  
  public gr(AdRequestParcel paramAdRequestParcel, ib paramib, List<String> paramList1, int paramInt1, List<String> paramList2, List<String> paramList3, int paramInt2, long paramLong1, String paramString1, boolean paramBoolean1, di paramdi, dt paramdt, String paramString2, dj paramdj, dl paramdl, long paramLong2, AdSizeParcel paramAdSizeParcel, long paramLong3, long paramLong4, long paramLong5, String paramString3, JSONObject paramJSONObject, h.a parama, RewardItemParcel paramRewardItemParcel, List<String> paramList4, List<String> paramList5, boolean paramBoolean2)
  {
    a = paramAdRequestParcel;
    b = paramib;
    c = a(paramList1);
    d = paramInt1;
    e = a(paramList2);
    f = a(paramList3);
    g = paramInt2;
    h = paramLong1;
    i = paramString1;
    m = paramBoolean1;
    n = paramdi;
    o = paramdt;
    p = paramString2;
    q = paramdj;
    r = paramdl;
    s = paramLong2;
    t = paramAdSizeParcel;
    u = paramLong3;
    y = paramLong4;
    z = paramLong5;
    A = paramString3;
    j = paramJSONObject;
    B = parama;
    v = paramRewardItemParcel;
    w = a(paramList4);
    x = a(paramList5);
    k = paramBoolean2;
  }
  
  public gr(a parama, ib paramib, di paramdi, dt paramdt, String paramString, dl paramdl, h.a parama1)
  {
    this(a.c, paramib, b.d, e, b.f, b.j, b.l, b.k, a.i, b.h, paramdi, paramdt, paramString, c, paramdl, b.i, d, b.g, f, g, b.o, h, parama1, b.D, b.E, b.E, b.G);
  }
  
  private static <T> List<T> a(List<T> paramList)
  {
    if (paramList == null) {
      return null;
    }
    return Collections.unmodifiableList(paramList);
  }
  
  public boolean a()
  {
    if ((b == null) || (b.l() == null)) {
      return false;
    }
    return b.l().b();
  }
  
  @fv
  public static final class a
  {
    public final AdRequestInfoParcel a;
    public final AdResponseParcel b;
    public final dj c;
    public final AdSizeParcel d;
    public final int e;
    public final long f;
    public final long g;
    public final JSONObject h;
    
    public a(AdRequestInfoParcel paramAdRequestInfoParcel, AdResponseParcel paramAdResponseParcel, dj paramdj, AdSizeParcel paramAdSizeParcel, int paramInt, long paramLong1, long paramLong2, JSONObject paramJSONObject)
    {
      a = paramAdRequestInfoParcel;
      b = paramAdResponseParcel;
      c = paramdj;
      d = paramAdSizeParcel;
      e = paramInt;
      f = paramLong1;
      g = paramLong2;
      h = paramJSONObject;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gr
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */