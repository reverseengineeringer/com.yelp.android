package com.google.android.gms.ads.internal;

import android.content.Context;
import android.graphics.Rect;
import android.os.Bundle;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.ds;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gr.a;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.hw;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.ic;
import com.google.android.gms.internal.ic.b;
import com.google.android.gms.internal.o;
import com.google.android.gms.internal.r;
import java.util.List;

@fv
public class g
  extends d
  implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener
{
  private boolean l;
  
  public g(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, ds paramds, VersionInfoParcel paramVersionInfoParcel, e parame)
  {
    super(paramContext, paramAdSizeParcel, paramString, paramds, paramVersionInfoParcel, parame);
  }
  
  private AdSizeParcel b(gr.a parama)
  {
    if (b.B) {
      return f.i;
    }
    parama = b.m;
    if (parama != null)
    {
      parama = parama.split("[xX]");
      parama[0] = parama[0].trim();
      parama[1] = parama[1].trim();
    }
    for (parama = new com.google.android.gms.ads.d(Integer.parseInt(parama[0]), Integer.parseInt(parama[1]));; parama = f.i.b()) {
      return new AdSizeParcel(f.c, parama);
    }
  }
  
  private boolean b(gr paramgr1, gr paramgr2)
  {
    View localView1;
    if (m)
    {
      localView1 = n.a(paramgr2);
      if (localView1 == null)
      {
        gz.d("Could not get mediation view");
        return false;
      }
      View localView2 = f.f.getNextView();
      if (localView2 != null)
      {
        if ((localView2 instanceof ib)) {
          ((ib)localView2).destroy();
        }
        f.f.removeView(localView2);
      }
      if (n.b(paramgr2)) {}
    }
    for (;;)
    {
      try
      {
        a(localView1);
        if (f.f.getChildCount() > 1) {
          f.f.showNext();
        }
        if (paramgr1 != null)
        {
          paramgr1 = f.f.getNextView();
          if (!(paramgr1 instanceof ib)) {
            break label271;
          }
          ((ib)paramgr1).a(f.c, f.i, a);
          f.d();
        }
        f.f.setVisibility(0);
        return true;
      }
      catch (Throwable paramgr1)
      {
        gz.d("Could not add mediation view to view hierarchy.", paramgr1);
        return false;
      }
      if ((t != null) && (b != null))
      {
        b.a(t);
        f.f.removeAllViews();
        f.f.setMinimumWidth(t.g);
        f.f.setMinimumHeight(t.d);
        a(b.b());
        continue;
        label271:
        if (paramgr1 != null) {
          f.f.removeView(paramgr1);
        }
      }
    }
  }
  
  private void e(final gr paramgr)
  {
    if (f.e()) {
      if (b != null)
      {
        if (j != null) {
          h.a(f.i, paramgr);
        }
        if (!paramgr.a()) {
          break label70;
        }
        h.a(f.i, paramgr).a(b);
      }
    }
    label70:
    while ((f.C == null) || (j == null))
    {
      return;
      b.l().a(new ic.b()
      {
        public void a()
        {
          h.a(f.i, paramgr).a(paramgrb);
        }
      });
      return;
    }
    h.a(f.i, paramgr, f.C);
  }
  
  protected ib a(gr.a parama, f paramf)
  {
    if (f.i.j) {
      f.i = b(parama);
    }
    return super.a(parama, paramf);
  }
  
  protected void a(gr paramgr, boolean paramBoolean)
  {
    super.a(paramgr, paramBoolean);
    if (n.b(paramgr)) {
      n.a(paramgr, new a());
    }
  }
  
  public void a(boolean paramBoolean)
  {
    zzx.zzcD("setManualImpressionsEnabled must be called from the main thread.");
    l = paramBoolean;
  }
  
  public boolean a(AdRequestParcel paramAdRequestParcel)
  {
    return super.a(d(paramAdRequestParcel));
  }
  
  public boolean a(gr paramgr1, gr paramgr2)
  {
    if (!super.a(paramgr1, paramgr2)) {
      return false;
    }
    if ((f.e()) && (!b(paramgr1, paramgr2)))
    {
      a(0);
      return false;
    }
    if (k)
    {
      d(paramgr2);
      hw.a(f.f, this);
      hw.a(f.f, this);
    }
    for (;;)
    {
      e(paramgr2);
      return true;
      if ((!f.f()) || (((Boolean)ao.aG.c()).booleanValue())) {
        a(paramgr2, false);
      }
    }
  }
  
  AdRequestParcel d(AdRequestParcel paramAdRequestParcel)
  {
    if (h == l) {
      return paramAdRequestParcel;
    }
    int i = a;
    long l1 = b;
    Bundle localBundle = c;
    int j = d;
    List localList = e;
    boolean bool2 = f;
    int k = g;
    if ((h) || (l)) {}
    for (boolean bool1 = true;; bool1 = false) {
      return new AdRequestParcel(i, l1, localBundle, j, localList, bool2, k, bool1, i, j, k, l, m, n, o, p, q, r);
    }
  }
  
  void d(gr paramgr)
  {
    if (paramgr == null) {}
    while ((l) || (f.f == null) || (!s.e().a(f.f, f.c)) || (!f.f.getGlobalVisibleRect(new Rect(), null))) {
      return;
    }
    a(paramgr, false);
    l = true;
  }
  
  public void f()
  {
    throw new IllegalStateException("Interstitial is NOT supported by BannerAdManager.");
  }
  
  public void onGlobalLayout()
  {
    d(f.j);
  }
  
  public void onScrollChanged()
  {
    d(f.j);
  }
  
  protected boolean s()
  {
    boolean bool = true;
    if (!s.e().a(f.c.getPackageManager(), f.c.getPackageName(), "android.permission.INTERNET"))
    {
      v.a().a(f.f, f.i, "Missing internet permission in AndroidManifest.xml.", "Missing internet permission in AndroidManifest.xml. You must have the following declaration: <uses-permission android:name=\"android.permission.INTERNET\" />");
      bool = false;
    }
    if (!s.e().a(f.c))
    {
      v.a().a(f.f, f.i, "Missing AdActivity with android:configChanges in AndroidManifest.xml.", "Missing AdActivity with android:configChanges in AndroidManifest.xml. You must have the following declaration within the <application> element: <activity android:name=\"com.google.android.gms.ads.AdActivity\" android:configChanges=\"keyboard|keyboardHidden|orientation|screenLayout|uiMode|screenSize|smallestScreenSize\" />");
      bool = false;
    }
    if ((!bool) && (f.f != null)) {
      f.f.setVisibility(0);
    }
    return bool;
  }
  
  public class a
  {
    public a() {}
    
    public void a()
    {
      e();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.g
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */