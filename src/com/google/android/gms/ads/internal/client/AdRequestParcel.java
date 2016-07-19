package com.google.android.gms.ads.internal.client;

import android.location.Location;
import android.os.Bundle;
import android.os.Parcel;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.internal.zzw;
import com.google.android.gms.internal.fv;
import java.util.List;

@fv
public final class AdRequestParcel
  implements SafeParcelable
{
  public static final p CREATOR = new p();
  public final int a;
  public final long b;
  public final Bundle c;
  public final int d;
  public final List<String> e;
  public final boolean f;
  public final int g;
  public final boolean h;
  public final String i;
  public final SearchAdRequestParcel j;
  public final Location k;
  public final String l;
  public final Bundle m;
  public final Bundle n;
  public final List<String> o;
  public final String p;
  public final String q;
  public final boolean r;
  
  public AdRequestParcel(int paramInt1, long paramLong, Bundle paramBundle1, int paramInt2, List<String> paramList1, boolean paramBoolean1, int paramInt3, boolean paramBoolean2, String paramString1, SearchAdRequestParcel paramSearchAdRequestParcel, Location paramLocation, String paramString2, Bundle paramBundle2, Bundle paramBundle3, List<String> paramList2, String paramString3, String paramString4, boolean paramBoolean3)
  {
    a = paramInt1;
    b = paramLong;
    Bundle localBundle = paramBundle1;
    if (paramBundle1 == null) {
      localBundle = new Bundle();
    }
    c = localBundle;
    d = paramInt2;
    e = paramList1;
    f = paramBoolean1;
    g = paramInt3;
    h = paramBoolean2;
    i = paramString1;
    j = paramSearchAdRequestParcel;
    k = paramLocation;
    l = paramString2;
    m = paramBundle2;
    n = paramBundle3;
    o = paramList2;
    p = paramString3;
    q = paramString4;
    r = paramBoolean3;
  }
  
  public int describeContents()
  {
    return 0;
  }
  
  public boolean equals(Object paramObject)
  {
    if (!(paramObject instanceof AdRequestParcel)) {}
    do
    {
      return false;
      paramObject = (AdRequestParcel)paramObject;
    } while ((a != a) || (b != b) || (!zzw.equal(c, c)) || (d != d) || (!zzw.equal(e, e)) || (f != f) || (g != g) || (h != h) || (!zzw.equal(i, i)) || (!zzw.equal(j, j)) || (!zzw.equal(k, k)) || (!zzw.equal(l, l)) || (!zzw.equal(m, m)) || (!zzw.equal(n, n)) || (!zzw.equal(o, o)) || (!zzw.equal(p, p)) || (!zzw.equal(q, q)) || (r != r));
    return true;
  }
  
  public int hashCode()
  {
    return zzw.hashCode(new Object[] { Integer.valueOf(a), Long.valueOf(b), c, Integer.valueOf(d), e, Boolean.valueOf(f), Integer.valueOf(g), Boolean.valueOf(h), i, j, k, l, m, n, o, p, q, Boolean.valueOf(r) });
  }
  
  public void writeToParcel(Parcel paramParcel, int paramInt)
  {
    p.a(this, paramParcel, paramInt);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.AdRequestParcel
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */