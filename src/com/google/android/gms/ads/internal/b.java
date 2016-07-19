package com.google.android.gms.ads.internal;

import android.os.Bundle;
import android.os.RemoteException;
import android.text.TextUtils;
import android.view.View;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.ThinAdSizeParcel;
import com.google.android.gms.ads.internal.client.ac.a;
import com.google.android.gms.ads.internal.client.ae;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.client.y;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.request.a.a;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.common.zze;
import com.google.android.gms.dynamic.d;
import com.google.android.gms.internal.aa;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.aq;
import com.google.android.gms.internal.au;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.bb;
import com.google.android.gms.internal.bv;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fd;
import com.google.android.gms.internal.fl.a;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gl;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gr.a;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gv;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.he;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.ic;
import java.util.HashSet;

@fv
public abstract class b
  extends ac.a
  implements com.google.android.gms.ads.internal.client.a, com.google.android.gms.ads.internal.overlay.o, a.a, bv, fl.a, gv
{
  protected ax a;
  protected au b;
  protected au c;
  protected boolean d = false;
  protected final r e;
  protected final t f;
  protected transient AdRequestParcel g;
  protected final com.google.android.gms.internal.r h;
  protected final e i;
  
  b(t paramt, r paramr, e parame)
  {
    f = paramt;
    if (paramr != null) {}
    for (;;)
    {
      e = paramr;
      i = parame;
      s.e().b(f.c);
      s.h().a(f.c, f.e);
      h = s.h().k();
      return;
      paramr = new r(this);
    }
  }
  
  private AdRequestParcel d(AdRequestParcel paramAdRequestParcel)
  {
    AdRequestParcel localAdRequestParcel = paramAdRequestParcel;
    if (zze.zzap(f.c))
    {
      localAdRequestParcel = paramAdRequestParcel;
      if (k != null) {
        localAdRequestParcel = new com.google.android.gms.ads.internal.client.o(paramAdRequestParcel).a(null).a();
      }
    }
    return localAdRequestParcel;
  }
  
  Bundle a(aa paramaa)
  {
    Object localObject2 = null;
    if (paramaa == null) {}
    label145:
    for (;;)
    {
      return (Bundle)localObject2;
      if (paramaa.f()) {
        paramaa.d();
      }
      paramaa = paramaa.c();
      Object localObject3;
      String str;
      Object localObject1;
      if (paramaa != null)
      {
        localObject3 = paramaa.b();
        str = paramaa.c();
        gz.a("In AdManager: loadAd, " + paramaa.toString());
        paramaa = str;
        localObject1 = localObject3;
        if (localObject3 != null)
        {
          s.h().a((String)localObject3);
          localObject1 = localObject3;
        }
      }
      for (paramaa = str;; paramaa = null)
      {
        if (localObject1 == null) {
          break label145;
        }
        localObject3 = new Bundle(1);
        ((Bundle)localObject3).putString("fingerprint", (String)localObject1);
        localObject2 = localObject3;
        if (((String)localObject1).equals(paramaa)) {
          break;
        }
        ((Bundle)localObject3).putString("v_fp", paramaa);
        return (Bundle)localObject3;
        localObject1 = s.h().i();
      }
    }
  }
  
  public com.google.android.gms.dynamic.c a()
  {
    zzx.zzcD("getAdFrame must be called on the main UI thread.");
    return d.a(f.f);
  }
  
  protected void a(int paramInt)
  {
    gz.d("Failed to load ad: " + paramInt);
    d = false;
    if (f.n != null) {}
    try
    {
      f.n.a(paramInt);
      if (f.y == null) {}
    }
    catch (RemoteException localRemoteException1)
    {
      for (;;)
      {
        try
        {
          f.y.a(paramInt);
          return;
        }
        catch (RemoteException localRemoteException2)
        {
          gz.d("Could not call RewardedVideoAdListener.onRewardedVideoAdFailedToLoad().", localRemoteException2);
        }
        localRemoteException1 = localRemoteException1;
        gz.d("Could not call AdListener.onAdFailedToLoad().", localRemoteException1);
      }
    }
  }
  
  protected void a(View paramView)
  {
    f.f.addView(paramView, s.g().d());
  }
  
  public void a(AdSizeParcel paramAdSizeParcel)
  {
    zzx.zzcD("setAdSize must be called on the main UI thread.");
    f.i = paramAdSizeParcel;
    if ((f.j != null) && (f.j.b != null) && (f.D == 0)) {
      f.j.b.a(paramAdSizeParcel);
    }
    if (f.f == null) {
      return;
    }
    if (f.f.getChildCount() > 1) {
      f.f.removeView(f.f.getNextView());
    }
    f.f.setMinimumWidth(g);
    f.f.setMinimumHeight(d);
    f.f.requestLayout();
  }
  
  public void a(ae paramae)
  {
    zzx.zzcD("setAppEventListener must be called on the main UI thread.");
    f.o = paramae;
  }
  
  public void a(af paramaf)
  {
    zzx.zzcD("setCorrelationIdProvider must be called on the main UI thread");
    f.p = paramaf;
  }
  
  public void a(com.google.android.gms.ads.internal.client.x paramx)
  {
    zzx.zzcD("setAdListener must be called on the main UI thread.");
    f.m = paramx;
  }
  
  public void a(y paramy)
  {
    zzx.zzcD("setAdListener must be called on the main UI thread.");
    f.n = paramy;
  }
  
  protected void a(RewardItemParcel paramRewardItemParcel)
  {
    if (f.y == null) {
      return;
    }
    String str = "";
    int j = 0;
    if (paramRewardItemParcel != null) {}
    try
    {
      str = b;
      j = c;
      f.y.a(new gl(str, j));
      return;
    }
    catch (RemoteException paramRewardItemParcel)
    {
      gz.d("Could not call RewardedVideoAdListener.onRewarded().", paramRewardItemParcel);
    }
  }
  
  public void a(bb parambb)
  {
    throw new IllegalStateException("setOnCustomRenderedAdLoadedListener is not supported for current ad type");
  }
  
  public void a(ez paramez)
  {
    throw new IllegalStateException("setInAppPurchaseListener is not supported for current ad type");
  }
  
  public void a(fd paramfd, String paramString)
  {
    throw new IllegalStateException("setPlayStorePurchaseParams is not supported for current ad type");
  }
  
  public void a(gr.a parama)
  {
    if ((b.n != -1L) && (!TextUtils.isEmpty(b.z)))
    {
      long l = b(b.z);
      if (l != -1L)
      {
        au localau = a.a(l + b.n);
        a.a(localau, new String[] { "stc" });
      }
    }
    a.a(b.z);
    a.a(b, new String[] { "arf" });
    c = a.a();
    a.a("gqi", b.A);
    f.g = null;
    f.k = parama;
    a(parama, a);
  }
  
  protected abstract void a(gr.a parama, ax paramax);
  
  public void a(com.yelp.android.bb.c paramc)
  {
    zzx.zzcD("setRewardedVideoAdListener can only be called from the UI thread.");
    f.y = paramc;
  }
  
  public void a(String paramString)
  {
    zzx.zzcD("setUserId must be called on the main UI thread.");
    f.a(paramString);
  }
  
  public void a(String paramString1, String paramString2)
  {
    if (f.o != null) {}
    try
    {
      f.o.a(paramString1, paramString2);
      return;
    }
    catch (RemoteException paramString1)
    {
      gz.d("Could not call the AppEventListener.", paramString1);
    }
  }
  
  public void a(HashSet<gs> paramHashSet)
  {
    f.a(paramHashSet);
  }
  
  public void a(boolean paramBoolean)
  {
    throw new UnsupportedOperationException("Attempt to call setManualImpressionsEnabled for an unsupported ad type.");
  }
  
  public boolean a(AdRequestParcel paramAdRequestParcel)
  {
    zzx.zzcD("loadAd must be called on the main UI thread.");
    paramAdRequestParcel = d(paramAdRequestParcel);
    if ((f.g != null) || (f.h != null))
    {
      if (g != null) {
        gz.d("Aborting last ad request since another ad request is already in progress. The current request object will still be cached for future refreshes.");
      }
      for (;;)
      {
        g = paramAdRequestParcel;
        return false;
        gz.d("Loading already in progress, saving this object for future refreshes.");
      }
    }
    gz.c("Starting ad request.");
    m();
    b = a.a();
    if (!f) {
      gz.c("Use AdRequest.Builder.addTestDevice(\"" + v.a().a(f.c) + "\") to get test ads on this device.");
    }
    d = a(paramAdRequestParcel, a);
    return d;
  }
  
  protected abstract boolean a(AdRequestParcel paramAdRequestParcel, ax paramax);
  
  boolean a(gr paramgr)
  {
    return false;
  }
  
  protected abstract boolean a(gr paramgr1, gr paramgr2);
  
  long b(String paramString)
  {
    int m = paramString.indexOf("ufe");
    int k = paramString.indexOf(',', m);
    int j = k;
    if (k == -1) {
      j = paramString.length();
    }
    try
    {
      long l = Long.parseLong(paramString.substring(m + 4, j));
      return l;
    }
    catch (IndexOutOfBoundsException paramString)
    {
      gz.d("Invalid index for Url fetch time in CSI latency info.");
      return -1L;
    }
    catch (NumberFormatException paramString)
    {
      for (;;)
      {
        gz.d("Cannot find valid format of Url fetch time in CSI latency info.");
      }
    }
  }
  
  public void b()
  {
    zzx.zzcD("destroy must be called on the main UI thread.");
    e.a();
    h.c(f.j);
    f.j();
  }
  
  public void b(gr paramgr)
  {
    a.a(c, new String[] { "awr" });
    f.h = null;
    if ((d != -2) && (d != 3)) {
      s.h().a(f.a());
    }
    if (d == -1) {
      d = false;
    }
    do
    {
      return;
      if (a(paramgr)) {
        gz.a("Ad refresh scheduled.");
      }
      if (d != -2)
      {
        a(d);
        return;
      }
      if (f.B == null) {
        f.B = new gw(f.b);
      }
      h.b(f.j);
    } while (!a(f.j, paramgr));
    f.j = paramgr;
    f.i();
    ax localax = a;
    if (f.j.a())
    {
      paramgr = "1";
      label203:
      localax.a("is_mraid", paramgr);
      localax = a;
      if (!f.j.m) {
        break label377;
      }
      paramgr = "1";
      label233:
      localax.a("is_mediation", paramgr);
      if ((f.j.b != null) && (f.j.b.l() != null))
      {
        localax = a;
        if (!f.j.b.l().c()) {
          break label384;
        }
      }
    }
    label377:
    label384:
    for (paramgr = "1";; paramgr = "0")
    {
      localax.a("is_video", paramgr);
      a.a(b, new String[] { "ttc" });
      if (s.h().e() != null) {
        s.h().e().a(a);
      }
      if (!f.e()) {
        break;
      }
      q();
      return;
      paramgr = "0";
      break label203;
      paramgr = "0";
      break label233;
    }
  }
  
  protected boolean b(AdRequestParcel paramAdRequestParcel)
  {
    paramAdRequestParcel = f.f.getParent();
    return ((paramAdRequestParcel instanceof View)) && (((View)paramAdRequestParcel).isShown()) && (s.e().a());
  }
  
  public void c(AdRequestParcel paramAdRequestParcel)
  {
    if (b(paramAdRequestParcel))
    {
      a(paramAdRequestParcel);
      return;
    }
    gz.c("Ad is not visible. Not refreshing ad.");
    e.a(paramAdRequestParcel);
  }
  
  protected void c(gr paramgr)
  {
    if (paramgr == null) {
      gz.d("Ad state was null when trying to ping impression URLs.");
    }
    do
    {
      return;
      gz.a("Pinging Impression URLs.");
      f.l.a();
    } while ((e == null) || (C));
    s.e().a(f.c, f.e.b, e);
    C = true;
  }
  
  public boolean c()
  {
    zzx.zzcD("isLoaded must be called on the main UI thread.");
    return (f.g == null) && (f.h == null) && (f.j != null);
  }
  
  public void d()
  {
    zzx.zzcD("pause must be called on the main UI thread.");
  }
  
  public void d_()
  {
    zzx.zzcD("resume must be called on the main UI thread.");
  }
  
  public void e()
  {
    if (f.j == null) {
      gz.d("Ad state was null when trying to ping click URLs.");
    }
    do
    {
      return;
      gz.a("Pinging click URLs.");
      f.l.b();
      if (f.j.c != null) {
        s.e().a(f.c, f.e.b, f.j.c);
      }
    } while (f.m == null);
    try
    {
      f.m.a();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gz.d("Could not notify onAdClicked event.", localRemoteException);
    }
  }
  
  public void g()
  {
    zzx.zzcD("stopLoading must be called on the main UI thread.");
    d = false;
    f.a(true);
  }
  
  public void h()
  {
    zzx.zzcD("recordManualImpression must be called on the main UI thread.");
    if (f.j == null) {
      gz.d("Ad state was null when trying to ping manual tracking URLs.");
    }
    do
    {
      return;
      gz.a("Pinging manual tracking URLs.");
    } while ((f.j.f == null) || (f.j.D));
    s.e().a(f.c, f.e.b, f.j.f);
    f.j.D = true;
  }
  
  public AdSizeParcel i()
  {
    zzx.zzcD("getAdSize must be called on the main UI thread.");
    if (f.i == null) {
      return null;
    }
    return new ThinAdSizeParcel(f.i);
  }
  
  public boolean k()
  {
    return d;
  }
  
  public void l()
  {
    o();
  }
  
  void m()
  {
    a = new ax(((Boolean)ao.G.c()).booleanValue(), "load_ad", f.i.b);
    b = new au(-1L, null, null);
    c = new au(-1L, null, null);
  }
  
  protected void n()
  {
    gz.c("Ad closing.");
    if (f.n != null) {}
    try
    {
      f.n.a();
      if (f.y == null) {}
    }
    catch (RemoteException localRemoteException1)
    {
      for (;;)
      {
        try
        {
          f.y.d();
          return;
        }
        catch (RemoteException localRemoteException2)
        {
          gz.d("Could not call RewardedVideoAdListener.onRewardedVideoAdClosed().", localRemoteException2);
        }
        localRemoteException1 = localRemoteException1;
        gz.d("Could not call AdListener.onAdClosed().", localRemoteException1);
      }
    }
  }
  
  protected void o()
  {
    gz.c("Ad leaving application.");
    if (f.n != null) {}
    try
    {
      f.n.b();
      if (f.y == null) {}
    }
    catch (RemoteException localRemoteException1)
    {
      for (;;)
      {
        try
        {
          f.y.e();
          return;
        }
        catch (RemoteException localRemoteException2)
        {
          gz.d("Could not call  RewardedVideoAdListener.onRewardedVideoAdLeftApplication().", localRemoteException2);
        }
        localRemoteException1 = localRemoteException1;
        gz.d("Could not call AdListener.onAdLeftApplication().", localRemoteException1);
      }
    }
  }
  
  protected void p()
  {
    gz.c("Ad opening.");
    if (f.n != null) {}
    try
    {
      f.n.d();
      if (f.y == null) {}
    }
    catch (RemoteException localRemoteException1)
    {
      for (;;)
      {
        try
        {
          f.y.b();
          return;
        }
        catch (RemoteException localRemoteException2)
        {
          gz.d("Could not call RewardedVideoAdListener.onRewardedVideoAdOpened().", localRemoteException2);
        }
        localRemoteException1 = localRemoteException1;
        gz.d("Could not call AdListener.onAdOpened().", localRemoteException1);
      }
    }
  }
  
  protected void q()
  {
    gz.c("Ad finished loading.");
    d = false;
    if (f.n != null) {}
    try
    {
      f.n.c();
      if (f.y == null) {}
    }
    catch (RemoteException localRemoteException1)
    {
      for (;;)
      {
        try
        {
          f.y.a();
          return;
        }
        catch (RemoteException localRemoteException2)
        {
          gz.d("Could not call RewardedVideoAdListener.onRewardedVideoAdLoaded().", localRemoteException2);
        }
        localRemoteException1 = localRemoteException1;
        gz.d("Could not call AdListener.onAdLoaded().", localRemoteException1);
      }
    }
  }
  
  protected void r()
  {
    if (f.y == null) {
      return;
    }
    try
    {
      f.y.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gz.d("Could not call RewardedVideoAdListener.onVideoStarted().", localRemoteException);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */