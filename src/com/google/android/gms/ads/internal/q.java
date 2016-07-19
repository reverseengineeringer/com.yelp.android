package com.google.android.gms.ads.internal;

import android.content.Context;
import android.os.Handler;
import android.os.RemoteException;
import com.google.android.gms.ads.internal.client.AdRequestParcel;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.formats.NativeAdOptionsParcel;
import com.google.android.gms.ads.internal.formats.d;
import com.google.android.gms.ads.internal.formats.f;
import com.google.android.gms.ads.internal.formats.g;
import com.google.android.gms.ads.internal.formats.h;
import com.google.android.gms.ads.internal.formats.h.a;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.internal.zzx;
import com.google.android.gms.internal.ax;
import com.google.android.gms.internal.bb;
import com.google.android.gms.internal.bd;
import com.google.android.gms.internal.bm;
import com.google.android.gms.internal.bn;
import com.google.android.gms.internal.bo;
import com.google.android.gms.internal.bp;
import com.google.android.gms.internal.ds;
import com.google.android.gms.internal.dt;
import com.google.android.gms.internal.dx;
import com.google.android.gms.internal.dy;
import com.google.android.gms.internal.ez;
import com.google.android.gms.internal.fl;
import com.google.android.gms.internal.fv;
import com.google.android.gms.internal.gr;
import com.google.android.gms.internal.gr.a;
import com.google.android.gms.internal.gt;
import com.google.android.gms.internal.gz;
import com.google.android.gms.internal.hd;
import com.yelp.android.g.i;
import java.util.List;

@fv
public class q
  extends c
{
  public q(Context paramContext, e parame, AdSizeParcel paramAdSizeParcel, String paramString, ds paramds, VersionInfoParcel paramVersionInfoParcel)
  {
    super(paramContext, paramAdSizeParcel, paramString, paramds, paramVersionInfoParcel, parame);
  }
  
  private static d a(dx paramdx)
    throws RemoteException
  {
    String str1 = paramdx.a();
    List localList = paramdx.b();
    String str2 = paramdx.c();
    if (paramdx.d() != null) {}
    for (bd localbd = paramdx.d();; localbd = null) {
      return new d(str1, localList, str2, localbd, paramdx.e(), paramdx.f(), paramdx.g(), paramdx.h(), null, paramdx.l());
    }
  }
  
  private static com.google.android.gms.ads.internal.formats.e a(dy paramdy)
    throws RemoteException
  {
    String str1 = paramdy.a();
    List localList = paramdy.b();
    String str2 = paramdy.c();
    if (paramdy.d() != null) {}
    for (bd localbd = paramdy.d();; localbd = null) {
      return new com.google.android.gms.ads.internal.formats.e(str1, localList, str2, localbd, paramdy.e(), paramdy.f(), null, paramdy.j());
    }
  }
  
  private void a(final d paramd)
  {
    hd.a.post(new Runnable()
    {
      public void run()
      {
        try
        {
          f.s.a(paramd);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          gz.d("Could not call OnAppInstallAdLoadedListener.onAppInstallAdLoaded().", localRemoteException);
        }
      }
    });
  }
  
  private void a(final com.google.android.gms.ads.internal.formats.e parame)
  {
    hd.a.post(new Runnable()
    {
      public void run()
      {
        try
        {
          f.t.a(parame);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          gz.d("Could not call OnContentAdLoadedListener.onContentAdLoaded().", localRemoteException);
        }
      }
    });
  }
  
  private void a(final gr paramgr, final String paramString)
  {
    hd.a.post(new Runnable()
    {
      public void run()
      {
        try
        {
          ((bp)f.v.get(paramString)).a((f)paramgrB);
          return;
        }
        catch (RemoteException localRemoteException)
        {
          gz.d("Could not call onCustomTemplateAdLoadedListener.onCustomTemplateAdLoaded().", localRemoteException);
        }
      }
    });
  }
  
  public void a(NativeAdOptionsParcel paramNativeAdOptionsParcel)
  {
    zzx.zzcD("setNativeAdOptions must be called on the main UI thread.");
    f.w = paramNativeAdOptionsParcel;
  }
  
  public void a(h paramh)
  {
    if (f.j.j != null) {
      s.h().k().a(f.i, f.j, paramh);
    }
  }
  
  public void a(bb parambb)
  {
    throw new IllegalStateException("CustomRendering is NOT supported by NativeAdManager.");
  }
  
  public void a(bm parambm)
  {
    zzx.zzcD("setOnAppInstallAdLoadedListener must be called on the main UI thread.");
    f.s = parambm;
  }
  
  public void a(bn parambn)
  {
    zzx.zzcD("setOnContentAdLoadedListener must be called on the main UI thread.");
    f.t = parambn;
  }
  
  public void a(ez paramez)
  {
    throw new IllegalStateException("In App Purchase is NOT supported by NativeAdManager.");
  }
  
  public void a(final gr.a parama, ax paramax)
  {
    if (d != null) {
      f.i = d;
    }
    if (e != -2)
    {
      hd.a.post(new Runnable()
      {
        public void run()
        {
          b(new gr(parama, null, null, null, null, null, null));
        }
      });
      return;
    }
    f.D = 0;
    f.h = s.d().a(f.c, this, parama, f.d, null, j, this, paramax);
    gz.a("AdRenderer: " + f.h.getClass().getName());
  }
  
  public void a(i<String, bp> parami)
  {
    zzx.zzcD("setOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
    f.v = parami;
  }
  
  public void a(List<String> paramList)
  {
    zzx.zzcD("setNativeTemplates must be called on the main UI thread.");
    f.z = paramList;
  }
  
  protected boolean a(AdRequestParcel paramAdRequestParcel, gr paramgr, boolean paramBoolean)
  {
    return e.d();
  }
  
  protected boolean a(gr paramgr1, gr paramgr2)
  {
    a(null);
    if (!f.e()) {
      throw new IllegalStateException("Native ad DOES NOT have custom rendering mode.");
    }
    if (m) {}
    for (;;)
    {
      try
      {
        localObject1 = o.h();
        localObject2 = o.i();
        if (localObject1 == null) {
          continue;
        }
        localObject2 = a((dx)localObject1);
        ((d)localObject2).a(new g(f.c, this, f.d, (dx)localObject1));
        a((d)localObject2);
      }
      catch (RemoteException localRemoteException)
      {
        Object localObject1;
        Object localObject2;
        gz.d("Failed to get native ad mapper", localRemoteException);
        continue;
        gz.d("No matching mapper for retrieved native ad template.");
        a(0);
        return false;
      }
      return super.a(paramgr1, paramgr2);
      if (localObject2 != null)
      {
        localObject1 = a((dy)localObject2);
        ((com.google.android.gms.ads.internal.formats.e)localObject1).a(new g(f.c, this, f.d, (dy)localObject2));
        a((com.google.android.gms.ads.internal.formats.e)localObject1);
      }
      else
      {
        h.a locala = B;
        if (((locala instanceof com.google.android.gms.ads.internal.formats.e)) && (f.t != null))
        {
          a((com.google.android.gms.ads.internal.formats.e)B);
        }
        else if (((locala instanceof d)) && (f.s != null))
        {
          a((d)B);
        }
        else
        {
          if ((!(locala instanceof f)) || (f.v == null) || (f.v.get(((f)locala).k()) == null)) {
            break;
          }
          a(paramgr2, ((f)locala).k());
        }
      }
    }
    gz.d("No matching listener for retrieved native ad template.");
    a(0);
    return false;
  }
  
  public void b(i<String, bo> parami)
  {
    zzx.zzcD("setOnCustomClickListener must be called on the main UI thread.");
    f.u = parami;
  }
  
  public bo c(String paramString)
  {
    zzx.zzcD("getOnCustomClickListener must be called on the main UI thread.");
    return (bo)f.u.get(paramString);
  }
  
  public void d()
  {
    throw new IllegalStateException("Native Ad DOES NOT support pause().");
  }
  
  public void d_()
  {
    throw new IllegalStateException("Native Ad DOES NOT support resume().");
  }
  
  public void f()
  {
    throw new IllegalStateException("Interstitial is NOT supported by NativeAdManager.");
  }
  
  public i<String, bp> z()
  {
    zzx.zzcD("getOnCustomTemplateAdLoadedListeners must be called on the main UI thread.");
    return f.v;
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.internal.q
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */