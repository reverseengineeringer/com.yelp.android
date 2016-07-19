package com.google.android.gms.internal;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.google.android.gms.ads.internal.overlay.j;
import com.google.android.gms.common.internal.zzx;

@fv
public class ia
{
  private final ib a;
  private final Context b;
  private final ViewGroup c;
  private j d;
  
  public ia(Context paramContext, ViewGroup paramViewGroup, ib paramib)
  {
    this(paramContext, paramViewGroup, paramib, null);
  }
  
  ia(Context paramContext, ViewGroup paramViewGroup, ib paramib, j paramj)
  {
    b = paramContext;
    c = paramViewGroup;
    a = paramib;
    d = paramj;
  }
  
  public j a()
  {
    zzx.zzcD("getAdVideoUnderlay must be called from the UI thread.");
    return d;
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    zzx.zzcD("The underlay may only be modified from the UI thread.");
    if (d != null) {
      d.a(paramInt1, paramInt2, paramInt3, paramInt4);
    }
  }
  
  public void a(int paramInt1, int paramInt2, int paramInt3, int paramInt4, int paramInt5)
  {
    if (d != null) {
      return;
    }
    as.a(a.x().a(), a.w(), new String[] { "vpr" });
    au localau = as.a(a.x().a());
    d = new j(b, a, paramInt5, a.x().a(), localau);
    c.addView(d, 0, new ViewGroup.LayoutParams(-1, -1));
    d.a(paramInt1, paramInt2, paramInt3, paramInt4);
    a.l().a(false);
  }
  
  public void b()
  {
    zzx.zzcD("onPause must be called from the UI thread.");
    if (d != null) {
      d.h();
    }
  }
  
  public void c()
  {
    zzx.zzcD("onDestroy must be called from the UI thread.");
    if (d != null) {
      d.m();
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ia
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */