package com.google.android.gms.internal;

import android.content.Context;
import android.net.Uri;
import android.net.http.SslError;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.KeyEvent;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.client.a;
import com.google.android.gms.ads.internal.overlay.AdLauncherIntentInfoParcel;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.d;
import com.google.android.gms.ads.internal.overlay.o;
import com.google.android.gms.ads.internal.overlay.zzd;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CopyOnWriteArrayList;

@fv
public class ic
  extends WebViewClient
{
  private static final String[] b = { "UNKNOWN", "HOST_LOOKUP", "UNSUPPORTED_AUTH_SCHEME", "AUTHENTICATION", "PROXY_AUTHENTICATION", "CONNECT", "IO", "TIMEOUT", "REDIRECT_LOOP", "UNSUPPORTED_SCHEME", "FAILED_SSL_HANDSHAKE", "BAD_URL", "FILE", "FILE_NOT_FOUND", "TOO_MANY_REQUESTS" };
  private static final String[] c = { "NOT_YET_VALID", "EXPIRED", "ID_MISMATCH", "UNTRUSTED", "DATE_INVALID", "INVALID" };
  protected ib a;
  private final HashMap<String, List<bz>> d = new HashMap();
  private final Object e = new Object();
  private a f;
  private com.google.android.gms.ads.internal.overlay.f g;
  private a h;
  private bv i;
  private b j;
  private boolean k = false;
  private cb l;
  private cd m;
  private boolean n;
  private boolean o;
  private o p;
  private final en q;
  private com.google.android.gms.ads.internal.f r;
  private ej s;
  private ep t;
  private boolean u;
  private boolean v;
  private boolean w;
  private int x;
  
  public ic(ib paramib, boolean paramBoolean)
  {
    this(paramib, paramBoolean, new en(paramib, paramib.g(), new ag(paramib.getContext())), null);
  }
  
  ic(ib paramib, boolean paramBoolean, en paramen, ej paramej)
  {
    a = paramib;
    n = paramBoolean;
    q = paramen;
    s = paramej;
  }
  
  private String a(String paramString)
  {
    if (TextUtils.isEmpty(paramString)) {
      return "";
    }
    paramString = Uri.parse(paramString);
    if (paramString.getHost() != null) {
      return paramString.getHost();
    }
    return "";
  }
  
  private void a(Context paramContext, String paramString1, String paramString2, String paramString3)
  {
    if (!((Boolean)ao.ao.c()).booleanValue()) {
      return;
    }
    Bundle localBundle = new Bundle();
    localBundle.putString("err", paramString1);
    localBundle.putString("code", paramString2);
    localBundle.putString("host", a(paramString3));
    s.e().a(paramContext, a.o().b, "gmob-apps", localBundle, true);
  }
  
  private static boolean b(Uri paramUri)
  {
    paramUri = paramUri.getScheme();
    return ("http".equalsIgnoreCase(paramUri)) || ("https".equalsIgnoreCase(paramUri));
  }
  
  private void h()
  {
    synchronized (e)
    {
      o = true;
      x += 1;
      e();
      return;
    }
  }
  
  private void i()
  {
    x -= 1;
    e();
  }
  
  private void j()
  {
    w = true;
    e();
  }
  
  public com.google.android.gms.ads.internal.f a()
  {
    return r;
  }
  
  public void a(int paramInt1, int paramInt2)
  {
    if (s != null) {
      s.c(paramInt1, paramInt2);
    }
  }
  
  public void a(int paramInt1, int paramInt2, boolean paramBoolean)
  {
    q.a(paramInt1, paramInt2);
    if (s != null) {
      s.a(paramInt1, paramInt2, paramBoolean);
    }
  }
  
  public void a(Uri paramUri)
  {
    Object localObject2 = paramUri.getPath();
    Object localObject1 = (List)d.get(localObject2);
    if (localObject1 != null)
    {
      paramUri = s.e().a(paramUri);
      if (gz.a(2))
      {
        gz.e("Received GMSG: " + (String)localObject2);
        localObject2 = paramUri.keySet().iterator();
        while (((Iterator)localObject2).hasNext())
        {
          String str = (String)((Iterator)localObject2).next();
          gz.e("  " + str + ": " + (String)paramUri.get(str));
        }
      }
      localObject1 = ((List)localObject1).iterator();
      while (((Iterator)localObject1).hasNext()) {
        ((bz)((Iterator)localObject1).next()).a(a, paramUri);
      }
    }
    gz.e("No GMSG handler found for GMSG: " + paramUri);
  }
  
  public void a(a parama, com.google.android.gms.ads.internal.overlay.f paramf, bv parambv, o paramo, boolean paramBoolean, cb paramcb, cd paramcd, com.google.android.gms.ads.internal.f paramf1, ep paramep)
  {
    com.google.android.gms.ads.internal.f localf = paramf1;
    if (paramf1 == null) {
      localf = new com.google.android.gms.ads.internal.f(false);
    }
    s = new ej(a, paramep);
    a("/appEvent", new bu(parambv));
    a("/backButton", by.k);
    a("/canOpenURLs", by.b);
    a("/canOpenIntents", by.c);
    a("/click", by.d);
    a("/close", by.e);
    a("/customClose", by.g);
    a("/instrument", by.n);
    a("/delayPageLoaded", new d(null));
    a("/httpTrack", by.h);
    a("/log", by.i);
    a("/mraid", new cf(localf, s));
    a("/mraidLoaded", q);
    a("/open", new cg(paramcb, localf, s));
    a("/precache", by.m);
    a("/touch", by.j);
    a("/video", by.l);
    a("/appStreaming", by.f);
    if (paramcd != null) {
      a("/setInterstitialProperties", new cc(paramcd));
    }
    f = parama;
    g = paramf;
    i = parambv;
    l = paramcb;
    p = paramo;
    r = localf;
    t = paramep;
    m = paramcd;
    a(paramBoolean);
  }
  
  public final void a(AdLauncherIntentInfoParcel paramAdLauncherIntentInfoParcel)
  {
    com.google.android.gms.ads.internal.overlay.f localf = null;
    boolean bool = a.p();
    a locala;
    if ((bool) && (!a.k().e))
    {
      locala = null;
      if (!bool) {
        break label75;
      }
    }
    for (;;)
    {
      a(new AdOverlayInfoParcel(paramAdLauncherIntentInfoParcel, locala, localf, p, a.o()));
      return;
      locala = f;
      break;
      label75:
      localf = g;
    }
  }
  
  public void a(AdOverlayInfoParcel paramAdOverlayInfoParcel)
  {
    boolean bool2 = false;
    if (s != null) {}
    for (boolean bool1 = s.b();; bool1 = false)
    {
      d locald = s.c();
      Context localContext = a.getContext();
      if (!bool1) {
        bool2 = true;
      }
      locald.a(localContext, paramAdOverlayInfoParcel, bool2);
      return;
    }
  }
  
  public void a(ib paramib)
  {
    a = paramib;
  }
  
  public void a(a parama)
  {
    h = parama;
  }
  
  public void a(b paramb)
  {
    j = paramb;
  }
  
  public void a(String paramString, bz parambz)
  {
    synchronized (e)
    {
      List localList = (List)d.get(paramString);
      Object localObject1 = localList;
      if (localList == null)
      {
        localObject1 = new CopyOnWriteArrayList();
        d.put(paramString, localObject1);
      }
      ((List)localObject1).add(parambz);
      return;
    }
  }
  
  public void a(boolean paramBoolean)
  {
    k = paramBoolean;
  }
  
  public final void a(boolean paramBoolean, int paramInt)
  {
    if ((a.p()) && (!a.k().e)) {}
    for (a locala = null;; locala = f)
    {
      a(new AdOverlayInfoParcel(locala, g, p, a, paramBoolean, paramInt, a.o()));
      return;
    }
  }
  
  public final void a(boolean paramBoolean, int paramInt, String paramString)
  {
    Object localObject = null;
    boolean bool = a.p();
    a locala;
    if ((bool) && (!a.k().e))
    {
      locala = null;
      if (!bool) {
        break label95;
      }
    }
    for (;;)
    {
      a(new AdOverlayInfoParcel(locala, (com.google.android.gms.ads.internal.overlay.f)localObject, i, p, a, paramBoolean, paramInt, paramString, a.o(), l));
      return;
      locala = f;
      break;
      label95:
      localObject = new c(a, g);
    }
  }
  
  public final void a(boolean paramBoolean, int paramInt, String paramString1, String paramString2)
  {
    boolean bool = a.p();
    a locala;
    if ((bool) && (!a.k().e))
    {
      locala = null;
      if (!bool) {
        break label97;
      }
    }
    label97:
    for (Object localObject = null;; localObject = new c(a, g))
    {
      a(new AdOverlayInfoParcel(locala, (com.google.android.gms.ads.internal.overlay.f)localObject, i, p, a, paramBoolean, paramInt, paramString1, paramString2, a.o(), l));
      return;
      locala = f;
      break;
    }
  }
  
  public void b(String paramString, bz parambz)
  {
    synchronized (e)
    {
      paramString = (List)d.get(paramString);
      if (paramString == null) {
        return;
      }
      paramString.remove(parambz);
      return;
    }
  }
  
  public boolean b()
  {
    synchronized (e)
    {
      boolean bool = n;
      return bool;
    }
  }
  
  public boolean c()
  {
    synchronized (e)
    {
      boolean bool = o;
      return bool;
    }
  }
  
  public void d()
  {
    synchronized (e)
    {
      gz.e("Loading blank page in WebView, 2...");
      u = true;
      a.a("about:blank");
      return;
    }
  }
  
  public final void e()
  {
    a locala;
    ib localib;
    if ((h != null) && (((v) && (x <= 0)) || (w)))
    {
      locala = h;
      localib = a;
      if (w) {
        break label70;
      }
    }
    label70:
    for (boolean bool = true;; bool = false)
    {
      locala.a(localib, bool);
      h = null;
      a.z();
      return;
    }
  }
  
  public final void f()
  {
    synchronized (e)
    {
      d.clear();
      f = null;
      g = null;
      h = null;
      i = null;
      k = false;
      n = false;
      o = false;
      l = null;
      p = null;
      j = null;
      if (s != null)
      {
        s.a(true);
        s = null;
      }
      return;
    }
  }
  
  public final void g()
  {
    synchronized (e)
    {
      k = false;
      n = true;
      hd.a(new Runnable()
      {
        public void run()
        {
          a.y();
          zzd localzzd = a.i();
          if (localzzd != null) {
            localzzd.m();
          }
          if (ic.d(ic.this) != null)
          {
            ic.d(ic.this).a();
            ic.a(ic.this, null);
          }
        }
      });
      return;
    }
  }
  
  public final void onLoadResource(WebView paramWebView, String paramString)
  {
    gz.e("Loading resource: " + paramString);
    paramWebView = Uri.parse(paramString);
    if (("gmsg".equalsIgnoreCase(paramWebView.getScheme())) && ("mobileads.google.com".equalsIgnoreCase(paramWebView.getHost()))) {
      a(paramWebView);
    }
  }
  
  public final void onPageFinished(WebView arg1, String paramString)
  {
    synchronized (e)
    {
      if (u)
      {
        gz.e("Blank page loaded, 1...");
        a.s();
        return;
      }
      v = true;
      e();
      return;
    }
  }
  
  public final void onReceivedError(WebView paramWebView, int paramInt, String paramString1, String paramString2)
  {
    if ((paramInt < 0) && (-paramInt - 1 < b.length)) {}
    for (String str = b[(-paramInt - 1)];; str = String.valueOf(paramInt))
    {
      a(a.getContext(), "http_err", str, paramString2);
      super.onReceivedError(paramWebView, paramInt, paramString1, paramString2);
      return;
    }
  }
  
  public final void onReceivedSslError(WebView paramWebView, SslErrorHandler paramSslErrorHandler, SslError paramSslError)
  {
    int i1;
    if (paramSslError != null)
    {
      i1 = paramSslError.getPrimaryError();
      if ((i1 < 0) || (i1 >= c.length)) {
        break label65;
      }
    }
    label65:
    for (String str = c[i1];; str = String.valueOf(i1))
    {
      a(a.getContext(), "ssl_err", str, s.g().a(paramSslError));
      super.onReceivedSslError(paramWebView, paramSslErrorHandler, paramSslError);
      return;
    }
  }
  
  public boolean shouldOverrideKeyEvent(WebView paramWebView, KeyEvent paramKeyEvent)
  {
    switch (paramKeyEvent.getKeyCode())
    {
    default: 
      return false;
    }
    return true;
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    gz.e("AdWebView shouldOverrideUrlLoading: " + paramString);
    Uri localUri = Uri.parse(paramString);
    if (("gmsg".equalsIgnoreCase(localUri.getScheme())) && ("mobileads.google.com".equalsIgnoreCase(localUri.getHost()))) {
      a(localUri);
    }
    for (;;)
    {
      return true;
      if ((k) && (paramWebView == a.a()) && (b(localUri)))
      {
        if ((f != null) && (((Boolean)ao.W.c()).booleanValue()))
        {
          f.e();
          f = null;
        }
        return super.shouldOverrideUrlLoading(paramWebView, paramString);
      }
      if (!a.a().willNotDraw())
      {
        try
        {
          j localj = a.n();
          paramWebView = localUri;
          if (localj != null)
          {
            paramWebView = localUri;
            if (localj.b(localUri)) {
              paramWebView = localj.a(localUri, a.getContext());
            }
          }
        }
        catch (zzao paramWebView)
        {
          for (;;)
          {
            gz.d("Unable to append parameter to URL: " + paramString);
            paramWebView = localUri;
          }
          r.a(paramString);
        }
        if ((r == null) || (r.b())) {
          a(new AdLauncherIntentInfoParcel("android.intent.action.VIEW", paramWebView.toString(), null, null, null, null, null));
        }
      }
      else
      {
        gz.d("AdWebView unable to handle URL: " + paramString);
      }
    }
  }
  
  public static abstract interface a
  {
    public abstract void a(ib paramib, boolean paramBoolean);
  }
  
  public static abstract interface b
  {
    public abstract void a();
  }
  
  private static class c
    implements com.google.android.gms.ads.internal.overlay.f
  {
    private ib a;
    private com.google.android.gms.ads.internal.overlay.f b;
    
    public c(ib paramib, com.google.android.gms.ads.internal.overlay.f paramf)
    {
      a = paramib;
      b = paramf;
    }
    
    public void e_()
    {
      b.e_();
      a.c();
    }
    
    public void f_()
    {
      b.f_();
      a.d();
    }
    
    public void g_() {}
    
    public void h_() {}
  }
  
  private class d
    implements bz
  {
    private d() {}
    
    public void a(ib paramib, Map<String, String> paramMap)
    {
      if (paramMap.keySet().contains("start")) {
        ic.a(ic.this);
      }
      do
      {
        return;
        if (paramMap.keySet().contains("stop"))
        {
          ic.b(ic.this);
          return;
        }
      } while (!paramMap.keySet().contains("cancel"));
      ic.c(ic.this);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.ic
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */