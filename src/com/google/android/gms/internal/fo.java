package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.n;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import java.util.List;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

@fv
public class fo
  extends zzgq
{
  protected dn g;
  private ds h;
  private dh i;
  private dj j;
  private final ax k;
  private final ib l;
  private boolean m;
  
  fo(Context paramContext, gr.a parama, ds paramds, fl.a parama1, ax paramax, ib paramib)
  {
    super(paramContext, parama, parama1);
    h = paramds;
    j = c;
    k = paramax;
    l = paramib;
  }
  
  private void c()
    throws zzgq.zza
  {
    ??? = new CountDownLatch(1);
    hd.a.post(new Runnable()
    {
      public void run()
      {
        synchronized (d)
        {
          fo.a(fo.this, n.a(fo.a(fo.this), g, localObject1));
          return;
        }
      }
    });
    try
    {
      ((CountDownLatch)???).await(10L, TimeUnit.SECONDS);
      synchronized (d)
      {
        if (!m) {
          throw new zzgq.zza("View could not be prepared", 0);
        }
      }
      if (!l.r()) {
        break label118;
      }
    }
    catch (InterruptedException localInterruptedException)
    {
      throw new zzgq.zza("Interrupted while waiting for latch : " + localInterruptedException, 0);
    }
    throw new zzgq.zza("Assets not loaded, web view is destroyed", 0);
    label118:
  }
  
  protected gr a(int paramInt)
  {
    Object localObject = e.a;
    AdRequestParcel localAdRequestParcel = c;
    ib localib = l;
    List localList1 = f.d;
    List localList2 = f.f;
    List localList3 = f.j;
    int n = f.l;
    long l1 = f.k;
    String str2 = i;
    boolean bool = f.h;
    dt localdt;
    label113:
    String str1;
    label129:
    dj localdj;
    if (g != null)
    {
      localObject = g.b;
      if (g == null) {
        break label270;
      }
      localdt = g.c;
      if (g == null) {
        break label276;
      }
      str1 = g.d;
      localdj = j;
      if (g == null) {
        break label286;
      }
    }
    label270:
    label276:
    label286:
    for (dl localdl = g.e;; localdl = null)
    {
      return new gr(localAdRequestParcel, localib, localList1, paramInt, localList2, localList3, n, l1, str2, bool, (di)localObject, localdt, str1, localdj, localdl, f.i, e.d, f.g, e.f, f.n, f.o, e.h, null, f.D, f.E, f.F, f.G);
      localObject = null;
      break;
      localdt = null;
      break label113;
      str1 = AdMobAdapter.class.getName();
      break label129;
    }
  }
  
  protected void a(long paramLong)
    throws zzgq.zza
  {
    synchronized (d)
    {
      i = b(paramLong);
      g = i.a(j.a);
      switch (g.a)
      {
      default: 
        throw new zzgq.zza("Unexpected mediation result: " + g.a, 0);
      }
    }
    throw new zzgq.zza("No fill from any mediation ad networks.", 3);
    if ((g.b != null) && (g.b.k != null)) {
      c();
    }
  }
  
  dh b(long paramLong)
  {
    if (j.j != -1) {
      return new dp(b, e.a, h, j, f.t, f.C, paramLong, ((Long)ao.ay.c()).longValue(), 2);
    }
    return new dq(b, e.a, h, j, f.t, f.C, paramLong, ((Long)ao.ay.c()).longValue(), k);
  }
  
  public void b()
  {
    synchronized (d)
    {
      super.b();
      if (i != null) {
        i.a();
      }
      return;
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fo
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */