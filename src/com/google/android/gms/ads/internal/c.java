package com.google.android.gms.ads.internal;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Handler;
import android.os.Messenger;
import android.os.RemoteException;
import android.util.DisplayMetrics;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.overlay.l;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.purchase.GInAppPurchaseManagerInfoParcel;
import com.google.android.gms.ads.internal.purchase.d;
import com.google.android.gms.ads.internal.purchase.g;
import com.google.android.gms.ads.internal.purchase.j;
import com.google.android.gms.ads.internal.purchase.k;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel.a;
import com.google.android.gms.ads.internal.request.CapabilityParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.cb;
import com.google.android.gms.internal.di;
import com.google.android.gms.internal.dj;
import com.google.android.gms.internal.dk;
import com.google.android.gms.internal.dl;
import com.google.android.gms.internal.do;
import com.google.android.gms.internal.ds;
import com.google.android.gms.internal.dt;
import com.google.android.gms.internal.ew;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fd;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.he;
import com.google.android.gms.internal.ib;
import java.util.ArrayList;
import java.util.List;
import java.util.UUID;

@fv
public abstract class c
  extends b
  implements com.google.android.gms.ads.internal.overlay.f, j, cb, dk
{
  protected final ds j;
  protected transient boolean k;
  private final Messenger l;
  
  public c(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, ds paramds, VersionInfoParcel paramVersionInfoParcel, e parame)
  {
    this(new t(paramContext, paramAdSizeParcel, paramString, paramVersionInfoParcel), paramds, null, parame);
  }
  
  c(t paramt, ds paramds, r paramr, e parame)
  {
    super(paramt, paramr, parame);
    j = paramds;
    l = new Messenger(new ew(f.c));
    k = false;
  }
  
  private AdRequestInfoParcel.a a(AdRequestParcel paramAdRequestParcel, Bundle paramBundle)
  {
    ApplicationInfo localApplicationInfo = f.c.getApplicationInfo();
    DisplayMetrics localDisplayMetrics;
    String str1;
    Object localObject;
    String str2;
    long l1;
    Bundle localBundle;
    ArrayList localArrayList;
    PackageInfo localPackageInfo2;
    try
    {
      PackageInfo localPackageInfo1 = f.c.getPackageManager().getPackageInfo(packageName, 0);
      localDisplayMetrics = f.c.getResources().getDisplayMetrics();
      str1 = null;
      localObject = str1;
      if (f.f != null)
      {
        localObject = str1;
        if (f.f.getParent() != null)
        {
          localObject = new int[2];
          f.f.getLocationOnScreen((int[])localObject);
          int n = localObject[0];
          int i1 = localObject[1];
          int i2 = f.f.getWidth();
          int i3 = f.f.getHeight();
          int m = 0;
          i = m;
          if (f.f.isShown())
          {
            i = m;
            if (n + i2 > 0)
            {
              i = m;
              if (i1 + i3 > 0)
              {
                i = m;
                if (n <= widthPixels)
                {
                  i = m;
                  if (i1 <= heightPixels) {
                    i = 1;
                  }
                }
              }
            }
          }
          localObject = new Bundle(5);
          ((Bundle)localObject).putInt("x", n);
          ((Bundle)localObject).putInt("y", i1);
          ((Bundle)localObject).putInt("width", i2);
          ((Bundle)localObject).putInt("height", i3);
          ((Bundle)localObject).putInt("visible", i);
        }
      }
      str1 = s.h().c();
      f.l = new gs(str1, f.b);
      f.l.a(paramAdRequestParcel);
      str2 = s.e().a(f.c, f.f, f.i);
      l2 = 0L;
      l1 = l2;
      if (f.p == null) {}
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      try
      {
        l1 = f.p.a();
        String str3 = UUID.randomUUID().toString();
        localBundle = s.h().a(f.c, this, str1);
        localArrayList = new ArrayList();
        int i = 0;
        while (i < f.v.size())
        {
          localArrayList.add(f.v.b(i));
          i += 1;
          continue;
          localNameNotFoundException = localNameNotFoundException;
          localPackageInfo2 = null;
        }
      }
      catch (RemoteException localRemoteException)
      {
        for (;;)
        {
          long l2;
          gz.d("Cannot get correlation id, default to 0.");
          l1 = l2;
        }
      }
    }
    boolean bool1;
    if (f.q != null)
    {
      bool1 = true;
      if ((f.r == null) || (!s.h().m())) {
        break label670;
      }
    }
    label670:
    for (boolean bool2 = true;; bool2 = false)
    {
      boolean bool3 = ic.a();
      return new AdRequestInfoParcel.a((Bundle)localObject, paramAdRequestParcel, f.i, f.b, localApplicationInfo, localPackageInfo2, str1, s.h().a(), f.e, localBundle, f.z, localArrayList, paramBundle, s.h().g(), l, widthPixels, heightPixels, density, str2, l1, localRemoteException, ao.a(), f.a, f.w, new CapabilityParcel(bool1, bool2, bool3), f.h(), s.e().f(), s.e().j(f.c), s.e().b(f.f));
      bool1 = false;
      break;
    }
  }
  
  public void a(ez paramez)
  {
    zzx.zzcD("setInAppPurchaseListener must be called on the main UI thread.");
    f.q = paramez;
  }
  
  public void a(fd paramfd, String paramString)
  {
    zzx.zzcD("setPlayStorePurchaseParams must be called on the main UI thread.");
    f.A = new k(paramString);
    f.r = paramfd;
    if ((!s.h().f()) && (paramfd != null)) {
      new com.google.android.gms.ads.internal.purchase.c(f.c, f.r, f.A).g();
    }
  }
  
  protected void a(gr paramgr, boolean paramBoolean)
  {
    if (paramgr == null) {
      gz.d("Ad state was null when trying to ping impression URLs.");
    }
    do
    {
      return;
      super.c(paramgr);
      if ((q != null) && (q.d != null)) {
        s.r().a(f.c, f.e.b, paramgr, f.b, paramBoolean, q.d);
      }
    } while ((n == null) || (n.g == null));
    s.r().a(f.c, f.e.b, paramgr, f.b, paramBoolean, n.g);
  }
  
  public void a(String paramString, ArrayList<String> paramArrayList)
  {
    paramArrayList = new d(paramString, paramArrayList, f.c, f.e.b);
    if (f.q == null)
    {
      gz.d("InAppPurchaseListener is not set. Try to launch default purchase flow.");
      if (!v.a().b(f.c))
      {
        gz.d("Google Play Service unavailable, cannot launch default purchase flow.");
        return;
      }
      if (f.r == null)
      {
        gz.d("PlayStorePurchaseListener is not set.");
        return;
      }
      if (f.A == null)
      {
        gz.d("PlayStorePurchaseVerifier is not initialized.");
        return;
      }
      if (f.E)
      {
        gz.d("An in-app purchase request is already in progress, abort");
        return;
      }
      f.E = true;
      try
      {
        if (!f.r.a(paramString))
        {
          f.E = false;
          return;
        }
      }
      catch (RemoteException paramString)
      {
        gz.d("Could not start In-App purchase.");
        f.E = false;
        return;
      }
      s.o().a(f.c, f.e.e, new GInAppPurchaseManagerInfoParcel(f.c, f.A, paramArrayList, this));
      return;
    }
    try
    {
      f.q.a(paramArrayList);
      return;
    }
    catch (RemoteException paramString)
    {
      gz.d("Could not start In-App purchase.");
    }
  }
  
  public void a(String paramString, boolean paramBoolean, int paramInt, final Intent paramIntent, com.google.android.gms.ads.internal.purchase.f paramf)
  {
    try
    {
      if (f.r != null) {
        f.r.a(new g(f.c, paramString, paramBoolean, paramInt, paramIntent, paramf));
      }
      hd.a.postDelayed(new Runnable()
      {
        public void run()
        {
          int i = s.o().a(paramIntent);
          s.o();
          if ((i == 0) && (f.j != null) && (f.j.b != null) && (f.j.b.i() != null)) {
            f.j.b.i().a();
          }
          f.E = false;
        }
      }, 500L);
      return;
    }
    catch (RemoteException paramString)
    {
      for (;;)
      {
        gz.d("Fail to invoke PlayStorePurchaseListener.");
      }
    }
  }
  
  public boolean a(AdRequestParcel paramAdRequestParcel, ax paramax)
  {
    if (!s()) {
      return false;
    }
    Bundle localBundle = a(s.h().a(f.c));
    e.a();
    f.D = 0;
    paramAdRequestParcel = a(paramAdRequestParcel, localBundle);
    paramax.a("seq_num", g);
    paramax.a("request_id", v);
    paramax.a("session_id", h);
    if (f != null) {
      paramax.a("app_version", String.valueOf(f.versionCode));
    }
    f.g = s.a().a(f.c, paramAdRequestParcel, f.d, this);
    return true;
  }
  
  protected boolean a(AdRequestParcel paramAdRequestParcel, gr paramgr, boolean paramBoolean)
  {
    if ((!paramBoolean) && (f.e()))
    {
      if (h <= 0L) {
        break label43;
      }
      e.a(paramAdRequestParcel, h);
    }
    for (;;)
    {
      return e.d();
      label43:
      if ((q != null) && (q.g > 0L)) {
        e.a(paramAdRequestParcel, q.g);
      } else if ((!m) && (d == 2)) {
        e.a(paramAdRequestParcel);
      }
    }
  }
  
  boolean a(gr paramgr)
  {
    boolean bool = false;
    Object localObject;
    if (g != null)
    {
      localObject = g;
      g = null;
    }
    for (;;)
    {
      return a((AdRequestParcel)localObject, paramgr, bool);
      AdRequestParcel localAdRequestParcel = a;
      localObject = localAdRequestParcel;
      if (c != null)
      {
        bool = c.getBoolean("_noRefresh", false);
        localObject = localAdRequestParcel;
      }
    }
  }
  
  protected boolean a(gr paramgr1, gr paramgr2)
  {
    int i = 0;
    if ((paramgr1 != null) && (r != null)) {
      r.a(null);
    }
    if (r != null) {
      r.a(this);
    }
    int m;
    if (q != null)
    {
      m = q.l;
      i = q.m;
    }
    for (;;)
    {
      f.B.a(m, i);
      return true;
      m = 0;
    }
  }
  
  public void b(gr paramgr)
  {
    super.b(paramgr);
    if ((d == 3) && (q != null) && (q.e != null))
    {
      gz.a("Pinging no fill URLs.");
      s.r().a(f.c, f.e.b, paramgr, f.b, false, q.e);
    }
  }
  
  protected boolean b(AdRequestParcel paramAdRequestParcel)
  {
    return (super.b(paramAdRequestParcel)) && (!k);
  }
  
  public void d()
  {
    zzx.zzcD("pause must be called on the main UI thread.");
    if ((f.j != null) && (f.j.b != null) && (f.e())) {
      s.g().a(f.j.b);
    }
    if ((f.j != null) && (f.j.o != null)) {}
    try
    {
      f.j.o.d();
      h.d(f.j);
      e.b();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        gz.d("Could not pause mediation adapter.");
      }
    }
  }
  
  public void d_()
  {
    zzx.zzcD("resume must be called on the main UI thread.");
    if ((f.j != null) && (f.j.b != null) && (f.e())) {
      s.g().b(f.j.b);
    }
    if ((f.j != null) && (f.j.o != null)) {}
    try
    {
      f.j.o.e();
      e.c();
      h.e(f.j);
      return;
    }
    catch (RemoteException localRemoteException)
    {
      for (;;)
      {
        gz.d("Could not resume mediation adapter.");
      }
    }
  }
  
  public void e()
  {
    if (f.j == null)
    {
      gz.d("Ad state was null when trying to ping click URLs.");
      return;
    }
    if ((f.j.q != null) && (f.j.q.c != null)) {
      s.r().a(f.c, f.e.b, f.j, f.b, false, f.j.q.c);
    }
    if ((f.j.n != null) && (f.j.n.f != null)) {
      s.r().a(f.c, f.e.b, f.j, f.b, false, f.j.n.f);
    }
    super.e();
  }
  
  public void e_()
  {
    h.b(f.j);
    k = false;
    n();
    f.l.c();
  }
  
  public void f()
  {
    throw new IllegalStateException("showInterstitial is not supported for current ad type");
  }
  
  public void f_()
  {
    k = true;
    p();
  }
  
  public void g_()
  {
    h.d(f.j);
  }
  
  public void h_()
  {
    h.e(f.j);
  }
  
  public String j()
  {
    if (f.j == null) {
      return null;
    }
    return f.j.p;
  }
  
  protected boolean s()
  {
    boolean bool = true;
    if ((!s.e().a(f.c.getPackageManager(), f.c.getPackageName(), "android.permission.INTERNET")) || (!s.e().a(f.c))) {
      bool = false;
    }
    return bool;
  }
  
  public void t()
  {
    e();
  }
  
  public void u()
  {
    e_();
  }
  
  public void v()
  {
    l();
  }
  
  public void w()
  {
    f_();
  }
  
  public void x()
  {
    if (f.j != null) {
      gz.d("Mediation adapter " + f.j.p + " refreshed, but mediation adapters should never refresh.");
    }
    a(f.j, true);
    q();
  }
  
  public void y()
  {
    a(f.j, false);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */