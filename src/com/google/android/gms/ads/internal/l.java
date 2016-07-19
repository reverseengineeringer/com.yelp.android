package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.os.Bundle;
import android.os.Handler;
import android.os.RemoteException;
import android.view.View;
import android.view.Window;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.reward.mediation.client.RewardItemParcel;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.ak;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.cd;
import com.google.android.gms.internal.ch;
import com.google.android.gms.internal.ch.a;
import com.google.android.gms.internal.ds;
import com.google.android.gms.internal.dt;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gr.a;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import com.google.android.gms.internal.he;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.ic;
import com.google.android.gms.internal.id;

@fv
public class l
  extends d
  implements cd, ch.a
{
  protected transient boolean l = false;
  private boolean m;
  private float n;
  private String o = "background" + hashCode() + "." + "png";
  
  public l(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, ds paramds, VersionInfoParcel paramVersionInfoParcel, e parame)
  {
    super(paramContext, paramAdSizeParcel, paramString, paramds, paramVersionInfoParcel, parame);
  }
  
  private void a(Bundle paramBundle)
  {
    s.e().b(f.c, f.e.b, "gmob-apps", paramBundle, false);
  }
  
  protected boolean C()
  {
    if (!(f.c instanceof Activity)) {}
    Window localWindow;
    do
    {
      return false;
      localWindow = ((Activity)f.c).getWindow();
    } while ((localWindow == null) || (localWindow.getDecorView() == null));
    Rect localRect1 = new Rect();
    Rect localRect2 = new Rect();
    localWindow.getDecorView().getGlobalVisibleRect(localRect1, null);
    localWindow.getDecorView().getWindowVisibleDisplayFrame(localRect2);
    if ((bottom != 0) && (bottom != 0) && (top == top)) {}
    for (boolean bool = true;; bool = false) {
      return bool;
    }
  }
  
  public void D()
  {
    new a(o).g();
    if (f.e())
    {
      f.b();
      f.j = null;
      f.F = false;
      l = false;
    }
  }
  
  public void E()
  {
    if ((f.j != null) && (f.j.w != null)) {
      s.e().a(f.c, f.e.b, f.j.w);
    }
    r();
  }
  
  protected ib a(gr.a parama, f paramf)
  {
    ib localib = s.f().a(f.c, f.i, false, false, f.d, f.e, a, i);
    localib.l().a(this, null, this, this, ((Boolean)ao.V.c()).booleanValue(), this, this, paramf, null);
    a(localib);
    localib.b(a.w);
    ch.a(localib, this);
    return localib;
  }
  
  public void a(boolean paramBoolean, float paramFloat)
  {
    m = paramBoolean;
    n = paramFloat;
  }
  
  public boolean a(AdRequestParcel paramAdRequestParcel, ax paramax)
  {
    if (f.j != null)
    {
      gz.d("An interstitial is already loading. Aborting.");
      return false;
    }
    return super.a(paramAdRequestParcel, paramax);
  }
  
  protected boolean a(AdRequestParcel paramAdRequestParcel, gr paramgr, boolean paramBoolean)
  {
    if ((f.e()) && (b != null)) {
      s.g().a(b);
    }
    return e.d();
  }
  
  public boolean a(gr paramgr1, gr paramgr2)
  {
    if (!super.a(paramgr1, paramgr2)) {
      return false;
    }
    if ((!f.e()) && (f.C != null) && (j != null)) {
      h.a(f.i, paramgr2, f.C);
    }
    return true;
  }
  
  public void b(RewardItemParcel paramRewardItemParcel)
  {
    RewardItemParcel localRewardItemParcel = paramRewardItemParcel;
    if (f.j != null)
    {
      if (f.j.x != null) {
        s.e().a(f.c, f.e.b, f.j.x);
      }
      localRewardItemParcel = paramRewardItemParcel;
      if (f.j.v != null) {
        localRewardItemParcel = f.j.v;
      }
    }
    a(localRewardItemParcel);
  }
  
  public void b(boolean paramBoolean)
  {
    f.F = paramBoolean;
  }
  
  public void f()
  {
    zzx.zzcD("showInterstitial must be called on the main UI thread.");
    if (f.j == null)
    {
      gz.d("The interstitial has not loaded.");
      return;
    }
    if (((Boolean)ao.an.c()).booleanValue()) {
      if (f.c.getApplicationContext() == null) {
        break label222;
      }
    }
    label222:
    for (String str = f.c.getApplicationContext().getPackageName();; localObject = f.c.getPackageName())
    {
      Bundle localBundle;
      if (!l)
      {
        gz.d("It is not recommended to show an interstitial before onAdLoaded completes.");
        localBundle = new Bundle();
        localBundle.putString("appid", str);
        localBundle.putString("action", "show_interstitial_before_load_finish");
        a(localBundle);
      }
      if (!s.e().g(f.c))
      {
        gz.d("It is not recommended to show an interstitial when app is not in foreground.");
        localBundle = new Bundle();
        localBundle.putString("appid", str);
        localBundle.putString("action", "show_interstitial_app_not_in_foreground");
        a(localBundle);
      }
      if (f.f()) {
        break;
      }
      if (!f.j.m) {
        break label236;
      }
      try
      {
        f.j.o.b();
        return;
      }
      catch (RemoteException localRemoteException)
      {
        gz.d("Could not show interstitial.", localRemoteException);
        D();
        return;
      }
    }
    label236:
    if (f.j.b == null)
    {
      gz.d("The interstitial failed to load.");
      return;
    }
    if (f.j.b.p())
    {
      gz.d("The interstitial is already showing.");
      return;
    }
    f.j.b.a(true);
    if (f.j.j != null) {
      h.a(f.i, f.j);
    }
    if (f.F) {}
    for (Object localObject = s.e().h(f.c); (((Boolean)ao.aE.c()).booleanValue()) && (localObject != null); localObject = null)
    {
      new b((Bitmap)localObject, o).g();
      return;
    }
    localObject = new InterstitialAdParameterParcel(f.F, C(), null, false, 0.0F);
    int j = f.j.b.q();
    int i = j;
    if (j == -1) {
      i = f.j.g;
    }
    localObject = new AdOverlayInfoParcel(this, this, this, f.j.b, i, f.e, f.j.A, (InterstitialAdParameterParcel)localObject);
    s.c().a(f.c, (AdOverlayInfoParcel)localObject);
  }
  
  public void f_()
  {
    y();
    super.f_();
  }
  
  protected void n()
  {
    D();
    super.n();
  }
  
  protected void q()
  {
    super.q();
    l = true;
  }
  
  @fv
  private class a
    extends gy
  {
    private final String b;
    
    public a(String paramString)
    {
      b = paramString;
    }
    
    public void a()
    {
      s.e().c(f.c, b);
    }
    
    public void b() {}
  }
  
  @fv
  private class b
    extends gy
  {
    private final Bitmap b;
    private final String c;
    
    public b(Bitmap paramBitmap, String paramString)
    {
      b = paramBitmap;
      c = paramString;
    }
    
    public void a()
    {
      boolean bool1;
      boolean bool2;
      boolean bool3;
      if (f.F)
      {
        bool1 = s.e().a(f.c, b, c);
        bool2 = f.F;
        bool3 = C();
        if (!bool1) {
          break label221;
        }
      }
      label221:
      for (final Object localObject = c;; localObject = null)
      {
        localObject = new InterstitialAdParameterParcel(bool2, bool3, (String)localObject, l.a(l.this), l.b(l.this));
        int j = f.j.b.q();
        int i = j;
        if (j == -1) {
          i = f.j.g;
        }
        localObject = new AdOverlayInfoParcel(l.this, l.this, l.this, f.j.b, i, f.e, f.j.A, (InterstitialAdParameterParcel)localObject);
        hd.a.post(new Runnable()
        {
          public void run()
          {
            s.c().a(f.c, localObject);
          }
        });
        return;
        bool1 = false;
        break;
      }
    }
    
    public void b() {}
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.l
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */