package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup;
import com.google.android.gms.ads.e;
import com.google.android.gms.internal.bc;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.fe;
import com.google.android.gms.internal.fh;
import com.google.android.gms.internal.fv;
import java.util.concurrent.atomic.AtomicBoolean;

@fv
public class c
{
  private final dr a = new dr();
  private final q b;
  private final AtomicBoolean c;
  private com.google.android.gms.ads.a d;
  private a e;
  private ac f;
  private com.google.android.gms.ads.d[] g;
  private String h;
  private String i;
  private ViewGroup j;
  private com.google.android.gms.ads.doubleclick.a k;
  private com.google.android.gms.ads.purchase.b l;
  private com.google.android.gms.ads.purchase.d m;
  private com.google.android.gms.ads.doubleclick.c n;
  private boolean o;
  private e p;
  private boolean q;
  
  public c(ViewGroup paramViewGroup)
  {
    this(paramViewGroup, null, false, q.a(), false);
  }
  
  public c(ViewGroup paramViewGroup, AttributeSet paramAttributeSet, boolean paramBoolean)
  {
    this(paramViewGroup, paramAttributeSet, paramBoolean, q.a(), false);
  }
  
  c(ViewGroup paramViewGroup, AttributeSet paramAttributeSet, boolean paramBoolean1, q paramq, ac paramac, boolean paramBoolean2)
  {
    j = paramViewGroup;
    b = paramq;
    f = paramac;
    c = new AtomicBoolean(false);
    q = paramBoolean2;
    if (paramAttributeSet != null) {
      paramq = paramViewGroup.getContext();
    }
    try
    {
      paramAttributeSet = new zzk(paramq, paramAttributeSet);
      g = paramAttributeSet.a(paramBoolean1);
      h = paramAttributeSet.a();
      if (paramViewGroup.isInEditMode()) {
        v.a().a(paramViewGroup, a(paramq, g[0], q), "Ads by Google");
      }
      return;
    }
    catch (IllegalArgumentException paramAttributeSet)
    {
      v.a().a(paramViewGroup, new AdSizeParcel(paramq, com.google.android.gms.ads.d.a), paramAttributeSet.getMessage(), paramAttributeSet.getMessage());
    }
  }
  
  c(ViewGroup paramViewGroup, AttributeSet paramAttributeSet, boolean paramBoolean1, q paramq, boolean paramBoolean2)
  {
    this(paramViewGroup, paramAttributeSet, paramBoolean1, paramq, null, paramBoolean2);
  }
  
  public c(ViewGroup paramViewGroup, AttributeSet paramAttributeSet, boolean paramBoolean1, boolean paramBoolean2)
  {
    this(paramViewGroup, paramAttributeSet, paramBoolean1, q.a(), paramBoolean2);
  }
  
  public c(ViewGroup paramViewGroup, boolean paramBoolean)
  {
    this(paramViewGroup, null, false, q.a(), paramBoolean);
  }
  
  private static AdSizeParcel a(Context paramContext, com.google.android.gms.ads.d paramd, boolean paramBoolean)
  {
    paramContext = new AdSizeParcel(paramContext, paramd);
    paramContext.a(paramBoolean);
    return paramContext;
  }
  
  private static AdSizeParcel a(Context paramContext, com.google.android.gms.ads.d[] paramArrayOfd, boolean paramBoolean)
  {
    paramContext = new AdSizeParcel(paramContext, paramArrayOfd);
    paramContext.a(paramBoolean);
    return paramContext;
  }
  
  private void n()
  {
    try
    {
      com.google.android.gms.dynamic.c localc = f.a();
      if (localc == null) {
        return;
      }
      j.addView((View)com.google.android.gms.dynamic.d.a(localc));
      return;
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to get an ad frame.", localRemoteException);
    }
  }
  
  public void a()
  {
    try
    {
      if (f != null) {
        f.b();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to destroy AdView.", localRemoteException);
    }
  }
  
  public void a(com.google.android.gms.ads.a parama)
  {
    try
    {
      d = parama;
      ac localac;
      if (f != null)
      {
        localac = f;
        if (parama == null) {
          break label38;
        }
      }
      label38:
      for (parama = new l(parama);; parama = null)
      {
        localac.a(parama);
        return;
      }
      return;
    }
    catch (RemoteException parama)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to set the AdListener.", parama);
    }
  }
  
  public void a(com.google.android.gms.ads.doubleclick.a parama)
  {
    try
    {
      k = parama;
      ac localac;
      if (f != null)
      {
        localac = f;
        if (parama == null) {
          break label38;
        }
      }
      label38:
      for (parama = new s(parama);; parama = null)
      {
        localac.a(parama);
        return;
      }
      return;
    }
    catch (RemoteException parama)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to set the AppEventListener.", parama);
    }
  }
  
  public void a(com.google.android.gms.ads.doubleclick.c paramc)
  {
    n = paramc;
    try
    {
      ac localac;
      if (f != null)
      {
        localac = f;
        if (paramc == null) {
          break label38;
        }
      }
      label38:
      for (paramc = new bc(paramc);; paramc = null)
      {
        localac.a(paramc);
        return;
      }
      return;
    }
    catch (RemoteException paramc)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to set the onCustomRenderedAdLoadedListener.", paramc);
    }
  }
  
  public void a(e parame)
  {
    p = parame;
    try
    {
      if (f != null)
      {
        ac localac = f;
        if (p == null) {}
        for (parame = null;; parame = p.a())
        {
          localac.a(parame);
          return;
        }
      }
      return;
    }
    catch (RemoteException parame)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to set correlator.", parame);
    }
  }
  
  public void a(a parama)
  {
    try
    {
      e = parama;
      ac localac;
      if (f != null)
      {
        localac = f;
        if (parama == null) {
          break label38;
        }
      }
      label38:
      for (parama = new k(parama);; parama = null)
      {
        localac.a(parama);
        return;
      }
      return;
    }
    catch (RemoteException parama)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to set the AdClickListener.", parama);
    }
  }
  
  public void a(b paramb)
  {
    try
    {
      if (f == null) {
        l();
      }
      if (f.a(b.a(j.getContext(), paramb))) {
        a.a(paramb.j());
      }
      return;
    }
    catch (RemoteException paramb)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to load ad.", paramb);
    }
  }
  
  public void a(com.google.android.gms.ads.purchase.b paramb)
  {
    if (m != null) {
      throw new IllegalStateException("Play store purchase parameter has already been set.");
    }
    try
    {
      l = paramb;
      ac localac;
      if (f != null)
      {
        localac = f;
        if (paramb == null) {
          break label56;
        }
      }
      label56:
      for (paramb = new fe(paramb);; paramb = null)
      {
        localac.a(paramb);
        return;
      }
      return;
    }
    catch (RemoteException paramb)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to set the InAppPurchaseListener.", paramb);
    }
  }
  
  public void a(String paramString)
  {
    if (h != null) {
      throw new IllegalStateException("The ad unit ID can only be set once on AdView.");
    }
    h = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    o = paramBoolean;
    try
    {
      if (f != null) {
        f.a(o);
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to set manual impressions.", localRemoteException);
    }
  }
  
  public void a(com.google.android.gms.ads.d... paramVarArgs)
  {
    if (g != null) {
      throw new IllegalStateException("The ad size can only be set once on AdView.");
    }
    b(paramVarArgs);
  }
  
  public com.google.android.gms.ads.a b()
  {
    return d;
  }
  
  public void b(com.google.android.gms.ads.d... paramVarArgs)
  {
    g = paramVarArgs;
    try
    {
      if (f != null) {
        f.a(a(j.getContext(), g, q));
      }
      j.requestLayout();
      return;
    }
    catch (RemoteException paramVarArgs)
    {
      for (;;)
      {
        com.google.android.gms.ads.internal.util.client.b.d("Failed to set the ad size.", paramVarArgs);
      }
    }
  }
  
  public com.google.android.gms.ads.d c()
  {
    try
    {
      if (f != null)
      {
        Object localObject = f.i();
        if (localObject != null)
        {
          localObject = ((AdSizeParcel)localObject).b();
          return (com.google.android.gms.ads.d)localObject;
        }
      }
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to get the current AdSize.", localRemoteException);
      if (g != null) {
        return g[0];
      }
    }
    return null;
  }
  
  public com.google.android.gms.ads.d[] d()
  {
    return g;
  }
  
  public String e()
  {
    return h;
  }
  
  public com.google.android.gms.ads.doubleclick.a f()
  {
    return k;
  }
  
  public com.google.android.gms.ads.purchase.b g()
  {
    return l;
  }
  
  public com.google.android.gms.ads.doubleclick.c h()
  {
    return n;
  }
  
  public void i()
  {
    try
    {
      if (f != null) {
        f.d();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to call pause.", localRemoteException);
    }
  }
  
  public void j()
  {
    try
    {
      if (f != null) {
        f.d_();
      }
      return;
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to call resume.", localRemoteException);
    }
  }
  
  public String k()
  {
    try
    {
      if (f != null)
      {
        String str = f.j();
        return str;
      }
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to get the mediation adapter class name.", localRemoteException);
    }
    return null;
  }
  
  void l()
    throws RemoteException
  {
    if (((g == null) || (h == null)) && (f == null)) {
      throw new IllegalStateException("The ad size and ad unit ID must be set before loadAd is called.");
    }
    f = m();
    if (d != null) {
      f.a(new l(d));
    }
    if (e != null) {
      f.a(new k(e));
    }
    if (k != null) {
      f.a(new s(k));
    }
    if (l != null) {
      f.a(new fe(l));
    }
    if (m != null) {
      f.a(new fh(m), i);
    }
    if (n != null) {
      f.a(new bc(n));
    }
    if (p != null) {
      f.a(p.a());
    }
    f.a(o);
    n();
  }
  
  protected ac m()
    throws RemoteException
  {
    Context localContext = j.getContext();
    return v.b().a(localContext, a(localContext, g, q), h, a);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.c
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */