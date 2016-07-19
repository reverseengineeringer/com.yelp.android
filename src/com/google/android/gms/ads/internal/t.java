package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.graphics.Rect;
import android.os.RemoteException;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.ViewTreeObserver.OnScrollChangedListener;
import android.widget.ViewSwitcher;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.ae;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.v;
import com.google.android.gms.ads.internal.client.x;
import com.google.android.gms.ads.internal.client.y;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.purchase.k;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.ads.internal.util.client.a;
import com.google.android.gms.internal.ao;
import com.google.android.gms.internal.aq;
import com.google.android.gms.internal.bb;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.bn;
import com.google.android.gms.internal.bo;
import com.google.android.gms.internal.bp;
import com.google.android.gms.internal.dt;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fd;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gr.a;
import com.google.android.gms.internal.gs;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gw;
import com.google.android.gms.internal.gy;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hf;
import com.google.android.gms.internal.hg;
import com.google.android.gms.internal.hl;
import com.google.android.gms.internal.ho;
import com.google.android.gms.internal.ib;
import com.google.android.gms.internal.ic;
import com.google.android.gms.internal.j;
import com.yelp.android.bb.c;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.UUID;

@fv
public final class t
  implements ViewTreeObserver.OnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener
{
  k A;
  public gw B = null;
  View C = null;
  public int D = 0;
  boolean E = false;
  boolean F = false;
  private String G;
  private HashSet<gs> H = null;
  private int I = -1;
  private int J = -1;
  private hl K;
  private boolean L = true;
  private boolean M = true;
  private boolean N = false;
  final String a;
  public String b;
  public final Context c;
  final j d;
  public final VersionInfoParcel e;
  a f;
  public gy g;
  public hf h;
  public AdSizeParcel i;
  public gr j;
  public gr.a k;
  public gs l;
  x m;
  y n;
  ae o;
  af p;
  ez q;
  fd r;
  bm s;
  bn t;
  com.yelp.android.g.i<String, bo> u;
  com.yelp.android.g.i<String, bp> v;
  NativeAdOptionsParcel w;
  bb x;
  c y;
  List<String> z;
  
  public t(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, VersionInfoParcel paramVersionInfoParcel)
  {
    this(paramContext, paramAdSizeParcel, paramString, paramVersionInfoParcel, null);
  }
  
  t(Context paramContext, AdSizeParcel paramAdSizeParcel, String paramString, VersionInfoParcel paramVersionInfoParcel, j paramj)
  {
    ao.a(paramContext);
    if (s.h().e() != null)
    {
      List localList = ao.b();
      if (c != 0) {
        localList.add(Integer.toString(c));
      }
      s.h().e().a(localList);
    }
    a = UUID.randomUUID().toString();
    if ((e) || (i))
    {
      f = null;
      i = paramAdSizeParcel;
      b = paramString;
      c = paramContext;
      e = paramVersionInfoParcel;
      if (paramj == null) {
        break label246;
      }
    }
    for (;;)
    {
      d = paramj;
      K = new hl(200L);
      v = new com.yelp.android.g.i();
      return;
      f = new a(paramContext, this, this);
      f.setMinimumWidth(g);
      f.setMinimumHeight(d);
      f.setVisibility(4);
      break;
      label246:
      paramj = new j(new i(this));
    }
  }
  
  private void b(boolean paramBoolean)
  {
    boolean bool = true;
    if ((f == null) || (j == null) || (j.b == null)) {}
    while ((paramBoolean) && (!K.a())) {
      return;
    }
    Object localObject;
    int i1;
    int i2;
    if (j.b.l().b())
    {
      localObject = new int[2];
      f.getLocationOnScreen((int[])localObject);
      i1 = v.a().b(c, localObject[0]);
      i2 = v.a().b(c, localObject[1]);
      if ((i1 != I) || (i2 != J))
      {
        I = i1;
        J = i2;
        localObject = j.b.l();
        i1 = I;
        i2 = J;
        if (paramBoolean) {
          break label174;
        }
      }
    }
    label174:
    for (paramBoolean = bool;; paramBoolean = false)
    {
      ((ic)localObject).a(i1, i2, paramBoolean);
      k();
      return;
    }
  }
  
  private void k()
  {
    View localView = f.getRootView().findViewById(16908290);
    if (localView == null) {}
    Rect localRect1;
    Rect localRect2;
    do
    {
      return;
      localRect1 = new Rect();
      localRect2 = new Rect();
      f.getGlobalVisibleRect(localRect1);
      localView.getGlobalVisibleRect(localRect2);
      if (top != top) {
        L = false;
      }
    } while (bottom == bottom);
    M = false;
  }
  
  public HashSet<gs> a()
  {
    return H;
  }
  
  void a(String paramString)
  {
    G = paramString;
  }
  
  public void a(HashSet<gs> paramHashSet)
  {
    H = paramHashSet;
  }
  
  public void a(boolean paramBoolean)
  {
    if (D == 0) {
      c();
    }
    if (g != null) {
      g.d();
    }
    if (h != null) {
      h.d();
    }
    if (paramBoolean) {
      j = null;
    }
  }
  
  public void b()
  {
    if ((j != null) && (j.b != null)) {
      j.b.destroy();
    }
  }
  
  public void c()
  {
    if ((j != null) && (j.b != null)) {
      j.b.stopLoading();
    }
  }
  
  public void d()
  {
    if ((j != null) && (j.o != null)) {}
    try
    {
      j.o.c();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      gz.d("Could not destroy mediation adapter.");
    }
  }
  
  public boolean e()
  {
    return D == 0;
  }
  
  public boolean f()
  {
    return D == 1;
  }
  
  public void g()
  {
    if (f != null) {
      f.b();
    }
  }
  
  public String h()
  {
    if ((L) && (M)) {
      return "";
    }
    if (L)
    {
      if (N) {
        return "top-scrollable";
      }
      return "top-locked";
    }
    if (M)
    {
      if (N) {
        return "bottom-scrollable";
      }
      return "bottom-locked";
    }
    return "";
  }
  
  public void i()
  {
    l.a(j.y);
    l.b(j.z);
    l.a(i.e);
    l.b(j.m);
  }
  
  public void j()
  {
    g();
    n = null;
    o = null;
    r = null;
    q = null;
    x = null;
    p = null;
    a(false);
    if (f != null) {
      f.removeAllViews();
    }
    b();
    d();
    j = null;
  }
  
  public void onGlobalLayout()
  {
    b(false);
  }
  
  public void onScrollChanged()
  {
    b(true);
    N = true;
  }
  
  public static class a
    extends ViewSwitcher
  {
    private final hg a;
    private final ho b;
    
    public a(Context paramContext, ViewTreeObserver.OnGlobalLayoutListener paramOnGlobalLayoutListener, ViewTreeObserver.OnScrollChangedListener paramOnScrollChangedListener)
    {
      super();
      a = new hg(paramContext);
      if ((paramContext instanceof Activity))
      {
        b = new ho((Activity)paramContext, paramOnGlobalLayoutListener, paramOnScrollChangedListener);
        b.a();
        return;
      }
      b = null;
    }
    
    public hg a()
    {
      return a;
    }
    
    public void b()
    {
      gz.e("Disable position monitoring on adFrame.");
      if (b != null) {
        b.b();
      }
    }
    
    protected void onAttachedToWindow()
    {
      super.onAttachedToWindow();
      if (b != null) {
        b.c();
      }
    }
    
    protected void onDetachedFromWindow()
    {
      super.onDetachedFromWindow();
      if (b != null) {
        b.d();
      }
    }
    
    public boolean onInterceptTouchEvent(MotionEvent paramMotionEvent)
    {
      a.a(paramMotionEvent);
      return false;
    }
    
    public void removeAllViews()
    {
      Object localObject = new ArrayList();
      int i = 0;
      while (i < getChildCount())
      {
        View localView = getChildAt(i);
        if ((localView != null) && ((localView instanceof ib))) {
          ((List)localObject).add((ib)localView);
        }
        i += 1;
      }
      super.removeAllViews();
      localObject = ((List)localObject).iterator();
      while (((Iterator)localObject).hasNext()) {
        ((ib)((Iterator)localObject).next()).destroy();
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.t
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */