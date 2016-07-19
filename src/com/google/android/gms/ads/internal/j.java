package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.y;
import com.google.android.gms.ads.internal.client.z.a;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.bn;
import com.google.android.gms.internal.bo;
import com.google.android.gms.internal.bp;
import com.google.android.gms.internal.ds;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.hd;
import com.yelp.android.g.i;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.List;

@fv
public class j
  extends z.a
{
  private final Context a;
  private final y b;
  private final ds c;
  private final bm d;
  private final bn e;
  private final i<String, bp> f;
  private final i<String, bo> g;
  private final NativeAdOptionsParcel h;
  private final List<String> i;
  private final af j;
  private final String k;
  private final VersionInfoParcel l;
  private WeakReference<q> m;
  private final e n;
  private final Object o = new Object();
  
  j(Context paramContext, String paramString, ds paramds, VersionInfoParcel paramVersionInfoParcel, y paramy, bm parambm, bn parambn, i<String, bp> parami, i<String, bo> parami1, NativeAdOptionsParcel paramNativeAdOptionsParcel, af paramaf, e parame)
  {
    a = paramContext;
    k = paramString;
    c = paramds;
    l = paramVersionInfoParcel;
    b = paramy;
    e = parambn;
    d = parambm;
    f = parami;
    g = parami1;
    h = paramNativeAdOptionsParcel;
    i = d();
    j = paramaf;
    n = parame;
  }
  
  private List<String> d()
  {
    ArrayList localArrayList = new ArrayList();
    if (e != null) {
      localArrayList.add("1");
    }
    if (d != null) {
      localArrayList.add("2");
    }
    if (f.size() > 0) {
      localArrayList.add("3");
    }
    return localArrayList;
  }
  
  public void a(final AdRequestParcel paramAdRequestParcel)
  {
    a(new Runnable()
    {
      public void run()
      {
        synchronized (j.a(j.this))
        {
          q localq = c();
          j.a(j.this, new WeakReference(localq));
          localq.a(j.b(j.this));
          localq.a(j.c(j.this));
          localq.a(j.d(j.this));
          localq.a(j.e(j.this));
          localq.b(j.f(j.this));
          localq.a(j.g(j.this));
          localq.a(j.h(j.this));
          localq.a(j.i(j.this));
          localq.a(paramAdRequestParcel);
          return;
        }
      }
    });
  }
  
  protected void a(Runnable paramRunnable)
  {
    hd.a.post(paramRunnable);
  }
  
  public boolean a()
  {
    for (;;)
    {
      synchronized (o)
      {
        if (m != null)
        {
          q localq = (q)m.get();
          if (localq != null)
          {
            bool = localq.k();
            return bool;
          }
        }
        else
        {
          return false;
        }
      }
      boolean bool = false;
    }
  }
  
  public String b()
  {
    for (;;)
    {
      synchronized (o)
      {
        if (m != null)
        {
          Object localObject1 = (q)m.get();
          if (localObject1 != null)
          {
            localObject1 = ((q)localObject1).j();
            return (String)localObject1;
          }
        }
        else
        {
          return null;
        }
      }
      Object localObject3 = null;
    }
  }
  
  protected q c()
  {
    return new q(a, n, AdSizeParcel.a(a), k, c, l);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.j
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */