package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.doubleclick.c;
import com.google.android.gms.internal.bc;
import com.google.android.gms.internal.dr;
import com.google.android.gms.internal.fe;
import com.google.android.gms.internal.fh;
import com.google.android.gms.internal.fv;
import com.yelp.android.bb.f;

@fv
public class d
{
  private final dr a = new dr();
  private final Context b;
  private final q c;
  private com.google.android.gms.ads.a d;
  private a e;
  private ac f;
  private String g;
  private String h;
  private com.google.android.gms.ads.doubleclick.a i;
  private com.google.android.gms.ads.purchase.d j;
  private com.google.android.gms.ads.purchase.b k;
  private com.google.android.gms.ads.doubleclick.e l;
  private c m;
  private com.google.android.gms.ads.e n;
  private com.yelp.android.be.b o;
  private String p;
  private boolean q;
  
  public d(Context paramContext)
  {
    this(paramContext, q.a(), null);
  }
  
  public d(Context paramContext, q paramq, com.google.android.gms.ads.doubleclick.e parame)
  {
    b = paramContext;
    c = paramq;
    l = parame;
  }
  
  private void c(String paramString)
    throws RemoteException
  {
    if (g == null) {
      d(paramString);
    }
    if (q) {}
    for (paramString = AdSizeParcel.a();; paramString = new AdSizeParcel())
    {
      f = v.b().b(b, paramString, g, a);
      if (d != null) {
        f.a(new l(d));
      }
      if (e != null) {
        f.a(new k(e));
      }
      if (i != null) {
        f.a(new s(i));
      }
      if (k != null) {
        f.a(new fe(k));
      }
      if (j != null) {
        f.a(new fh(j), h);
      }
      if (m != null) {
        f.a(new bc(m));
      }
      if (n != null) {
        f.a(n.a());
      }
      if (o != null) {
        f.a(new f(o));
      }
      if (p != null) {
        f.a(p);
      }
      return;
    }
  }
  
  private void d(String paramString)
  {
    if (f == null) {
      throw new IllegalStateException("The ad unit ID must be set on InterstitialAd before " + paramString + " is called.");
    }
  }
  
  public void a()
  {
    try
    {
      d("show");
      f.f();
      return;
    }
    catch (RemoteException localRemoteException)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to show interstitial.", localRemoteException);
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
        c("loadAd");
      }
      if (f.a(c.a(b, paramb))) {
        a.a(paramb.j());
      }
      return;
    }
    catch (RemoteException paramb)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to load ad.", paramb);
    }
  }
  
  public void a(com.yelp.android.be.b paramb)
  {
    try
    {
      o = paramb;
      ac localac;
      if (f != null)
      {
        localac = f;
        if (paramb == null) {
          break label38;
        }
      }
      label38:
      for (paramb = new f(paramb);; paramb = null)
      {
        localac.a(paramb);
        return;
      }
      return;
    }
    catch (RemoteException paramb)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to set the AdListener.", paramb);
    }
  }
  
  public void a(String paramString)
  {
    if (g != null) {
      throw new IllegalStateException("The ad unit ID can only be set once on InterstitialAd.");
    }
    g = paramString;
  }
  
  public void a(boolean paramBoolean)
  {
    q = paramBoolean;
  }
  
  public void b(String paramString)
  {
    try
    {
      p = paramString;
      if (f != null) {
        f.a(paramString);
      }
      return;
    }
    catch (RemoteException paramString)
    {
      com.google.android.gms.ads.internal.util.client.b.d("Failed to set the AdListener.", paramString);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.client.d
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */