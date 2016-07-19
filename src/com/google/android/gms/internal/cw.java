package com.google.android.gms.internal;

import android.content.Context;
import android.os.Bundle;
import android.os.RemoteException;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.ac.a;
import com.google.android.gms.ads.internal.client.ae;
import com.google.android.gms.ads.internal.client.af;
import com.google.android.gms.ads.internal.client.x;
import com.google.android.gms.ads.internal.client.y;
import com.google.android.gms.ads.internal.e;
import com.google.android.gms.ads.internal.l;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.Set;

@fv
public class cw
  extends ac.a
{
  private String a;
  private cp b;
  private l c;
  private cr d;
  private fd e;
  private String f;
  
  public cw(Context paramContext, String paramString, ds paramds, VersionInfoParcel paramVersionInfoParcel, e parame)
  {
    this(paramString, new cp(paramContext.getApplicationContext(), paramds, paramVersionInfoParcel, parame));
  }
  
  public cw(String paramString, cp paramcp)
  {
    a = paramString;
    b = paramcp;
    d = new cr();
    s.p().a(paramcp);
  }
  
  private void m()
  {
    if ((c != null) && (e != null)) {
      c.a(e, f);
    }
  }
  
  public com.google.android.gms.dynamic.c a()
    throws RemoteException
  {
    if (c != null) {
      return c.a();
    }
    return null;
  }
  
  public void a(AdSizeParcel paramAdSizeParcel)
    throws RemoteException
  {
    if (c != null) {
      c.a(paramAdSizeParcel);
    }
  }
  
  public void a(ae paramae)
    throws RemoteException
  {
    d.b = paramae;
    if (c != null) {
      d.a(c);
    }
  }
  
  public void a(af paramaf)
    throws RemoteException
  {
    l();
    if (c != null) {
      c.a(paramaf);
    }
  }
  
  public void a(x paramx)
    throws RemoteException
  {
    d.e = paramx;
    if (c != null) {
      d.a(c);
    }
  }
  
  public void a(y paramy)
    throws RemoteException
  {
    d.a = paramy;
    if (c != null) {
      d.a(c);
    }
  }
  
  public void a(bb parambb)
    throws RemoteException
  {
    d.d = parambb;
    if (c != null) {
      d.a(c);
    }
  }
  
  public void a(ez paramez)
    throws RemoteException
  {
    d.c = paramez;
    if (c != null) {
      d.a(c);
    }
  }
  
  public void a(fd paramfd, String paramString)
    throws RemoteException
  {
    e = paramfd;
    f = paramString;
    m();
  }
  
  public void a(com.yelp.android.bb.c paramc)
  {
    d.f = paramc;
    if (c != null) {
      d.a(c);
    }
  }
  
  public void a(String paramString) {}
  
  public void a(boolean paramBoolean)
    throws RemoteException
  {
    l();
    if (c != null) {
      c.a(paramBoolean);
    }
  }
  
  public boolean a(AdRequestParcel paramAdRequestParcel)
    throws RemoteException
  {
    if (b(paramAdRequestParcel)) {
      l();
    }
    if (j != null) {
      l();
    }
    if (c != null) {
      return c.a(paramAdRequestParcel);
    }
    cv.a locala = s.p().a(paramAdRequestParcel, a);
    if (locala != null)
    {
      if (!e) {
        locala.a(paramAdRequestParcel);
      }
      c = a;
      locala.a(b);
      c.a(d);
      d.a(c);
      m();
      return f;
    }
    c = b.a(a);
    d.a(c);
    m();
    return c.a(paramAdRequestParcel);
  }
  
  public void b()
    throws RemoteException
  {
    if (c != null) {
      c.b();
    }
  }
  
  boolean b(AdRequestParcel paramAdRequestParcel)
  {
    paramAdRequestParcel = m;
    if (paramAdRequestParcel == null) {}
    do
    {
      return false;
      paramAdRequestParcel = paramAdRequestParcel.getBundle(AdMobAdapter.class.getCanonicalName());
    } while (paramAdRequestParcel == null);
    return paramAdRequestParcel.keySet().contains("gw");
  }
  
  public boolean c()
    throws RemoteException
  {
    return (c != null) && (c.c());
  }
  
  public void d()
    throws RemoteException
  {
    if (c != null) {
      c.d();
    }
  }
  
  public void d_()
    throws RemoteException
  {
    if (c != null) {
      c.d_();
    }
  }
  
  public void f()
    throws RemoteException
  {
    if (c != null)
    {
      c.f();
      return;
    }
    gz.d("Interstitial ad must be loaded before showInterstitial().");
  }
  
  public void g()
    throws RemoteException
  {
    if (c != null) {
      c.g();
    }
  }
  
  public void h()
    throws RemoteException
  {
    if (c != null)
    {
      c.h();
      return;
    }
    gz.d("Interstitial ad must be loaded before pingManualTrackingUrl().");
  }
  
  public AdSizeParcel i()
    throws RemoteException
  {
    if (c != null) {
      return c.i();
    }
    return null;
  }
  
  public String j()
    throws RemoteException
  {
    if (c != null) {
      return c.j();
    }
    return null;
  }
  
  public boolean k()
    throws RemoteException
  {
    return (c != null) && (c.k());
  }
  
  void l()
  {
    if (c != null) {
      return;
    }
    c = b.a(a);
    d.a(c);
    m();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.cw
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */