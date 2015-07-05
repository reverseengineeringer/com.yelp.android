package com.google.android.gms.internal;

import android.net.Uri;
import android.os.Handler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

@ey
public class gv
  extends WebViewClient
{
  private final Object mH = new Object();
  protected final gu mo;
  private cb pP;
  private cg qa;
  private ce qc;
  private v qd;
  private gv.a tu;
  private final HashMap<String, cd> xe = new HashMap();
  private t xf;
  private ds xg;
  private boolean xh = false;
  private boolean xi;
  private dv xj;
  private final dl xk;
  
  public gv(gu paramgu, boolean paramBoolean)
  {
    this(paramgu, paramBoolean, new dl(paramgu, paramgu.getContext(), new bl(paramgu.getContext())));
  }
  
  gv(gu paramgu, boolean paramBoolean, dl paramdl)
  {
    mo = paramgu;
    xi = paramBoolean;
    xk = paramdl;
  }
  
  private static boolean d(Uri paramUri)
  {
    paramUri = paramUri.getScheme();
    return ("http".equalsIgnoreCase(paramUri)) || ("https".equalsIgnoreCase(paramUri));
  }
  
  private void e(Uri paramUri)
  {
    Object localObject = paramUri.getPath();
    cd localcd = (cd)xe.get(localObject);
    if (localcd != null)
    {
      paramUri = gi.c(paramUri);
      if (gr.v(2))
      {
        gr.V("Received GMSG: " + (String)localObject);
        localObject = paramUri.keySet().iterator();
        while (((Iterator)localObject).hasNext())
        {
          String str = (String)((Iterator)localObject).next();
          gr.V("  " + str + ": " + (String)paramUri.get(str));
        }
      }
      localcd.a(mo, paramUri);
      return;
    }
    gr.V("No GMSG handler found for GMSG: " + paramUri);
  }
  
  public final void A(boolean paramBoolean)
  {
    xh = paramBoolean;
  }
  
  public final void a(do paramdo)
  {
    ds localds = null;
    boolean bool = mo.dH();
    t localt;
    if ((bool) && (!mo.ac().oq))
    {
      localt = null;
      if (!bool) {
        break label69;
      }
    }
    for (;;)
    {
      a(new dr(paramdo, localt, localds, xj, mo.dG()));
      return;
      localt = xf;
      break;
      label69:
      localds = xg;
    }
  }
  
  protected void a(dr paramdr)
  {
    dp.a(mo.getContext(), paramdr);
  }
  
  public final void a(gv.a parama)
  {
    tu = parama;
  }
  
  public void a(t paramt, ds paramds, cb paramcb, dv paramdv, boolean paramBoolean, ce paramce, cg paramcg, v paramv)
  {
    a(paramt, paramds, paramcb, paramdv, paramBoolean, paramce, paramv);
    a("/setInterstitialProperties", new cf(paramcg));
    qa = paramcg;
  }
  
  public void a(t paramt, ds paramds, cb paramcb, dv paramdv, boolean paramBoolean, ce paramce, v paramv)
  {
    v localv = paramv;
    if (paramv == null) {
      localv = new v(false);
    }
    a("/appEvent", new ca(paramcb));
    a("/canOpenURLs", cc.pR);
    a("/canOpenIntents", cc.pS);
    a("/click", cc.pT);
    a("/close", cc.pU);
    a("/customClose", cc.pV);
    a("/httpTrack", cc.pW);
    a("/log", cc.pX);
    a("/open", new ci(paramce, localv));
    a("/touch", cc.pY);
    a("/video", cc.pZ);
    a("/mraid", new ch());
    xf = paramt;
    xg = paramds;
    pP = paramcb;
    qc = paramce;
    xj = paramdv;
    qd = localv;
    A(paramBoolean);
  }
  
  public final void a(String paramString, cd paramcd)
  {
    xe.put(paramString, paramcd);
  }
  
  public final void a(boolean paramBoolean, int paramInt)
  {
    if ((mo.dH()) && (!mo.ac().oq)) {}
    for (t localt = null;; localt = xf)
    {
      a(new dr(localt, xg, xj, mo, paramBoolean, paramInt, mo.dG()));
      return;
    }
  }
  
  public final void a(boolean paramBoolean, int paramInt, String paramString)
  {
    ds localds = null;
    boolean bool = mo.dH();
    t localt;
    if ((bool) && (!mo.ac().oq))
    {
      localt = null;
      if (!bool) {
        break label89;
      }
    }
    for (;;)
    {
      a(new dr(localt, localds, pP, xj, mo, paramBoolean, paramInt, paramString, mo.dG(), qc));
      return;
      localt = xf;
      break;
      label89:
      localds = xg;
    }
  }
  
  public final void a(boolean paramBoolean, int paramInt, String paramString1, String paramString2)
  {
    boolean bool = mo.dH();
    t localt;
    if ((bool) && (!mo.ac().oq))
    {
      localt = null;
      if (!bool) {
        break label91;
      }
    }
    label91:
    for (ds localds = null;; localds = xg)
    {
      a(new dr(localt, localds, pP, xj, mo, paramBoolean, paramInt, paramString1, paramString2, mo.dG(), qc));
      return;
      localt = xf;
      break;
    }
  }
  
  public final void cg()
  {
    synchronized (mH)
    {
      xh = false;
      xi = true;
      dp localdp = mo.dC();
      if (localdp != null)
      {
        if (!gq.dB()) {
          gq.wR.post(new gv.1(this, localdp));
        }
      }
      else {
        return;
      }
      localdp.cg();
    }
  }
  
  public v dM()
  {
    return qd;
  }
  
  public boolean dN()
  {
    synchronized (mH)
    {
      boolean bool = xi;
      return bool;
    }
  }
  
  public void dO()
  {
    if (dN()) {
      xk.bY();
    }
  }
  
  public final void onLoadResource(WebView paramWebView, String paramString)
  {
    gr.V("Loading resource: " + paramString);
    paramWebView = Uri.parse(paramString);
    if (("gmsg".equalsIgnoreCase(paramWebView.getScheme())) && ("mobileads.google.com".equalsIgnoreCase(paramWebView.getHost()))) {
      e(paramWebView);
    }
  }
  
  public final void onPageFinished(WebView paramWebView, String paramString)
  {
    if (tu != null)
    {
      tu.a(mo);
      tu = null;
    }
  }
  
  public final void reset()
  {
    synchronized (mH)
    {
      xe.clear();
      xf = null;
      xg = null;
      tu = null;
      pP = null;
      xh = false;
      xi = false;
      qc = null;
      xj = null;
      return;
    }
  }
  
  public final boolean shouldOverrideUrlLoading(WebView paramWebView, String paramString)
  {
    gr.V("AdWebView shouldOverrideUrlLoading: " + paramString);
    Uri localUri = Uri.parse(paramString);
    if (("gmsg".equalsIgnoreCase(localUri.getScheme())) && ("mobileads.google.com".equalsIgnoreCase(localUri.getHost()))) {
      e(localUri);
    }
    for (;;)
    {
      return true;
      if ((xh) && (paramWebView == mo) && (d(localUri))) {
        return super.shouldOverrideUrlLoading(paramWebView, paramString);
      }
      if (!mo.willNotDraw())
      {
        try
        {
          k localk = mo.dF();
          paramWebView = localUri;
          if (localk != null)
          {
            paramWebView = localUri;
            if (localk.b(localUri)) {
              paramWebView = localk.a(localUri, mo.getContext());
            }
          }
        }
        catch (l paramWebView)
        {
          for (;;)
          {
            gr.W("Unable to append parameter to URL: " + paramString);
            paramWebView = localUri;
          }
          qd.d(paramString);
        }
        if ((qd == null) || (qd.az())) {
          a(new do("android.intent.action.VIEW", paramWebView.toString(), null, null, null, null, null));
        }
      }
      else
      {
        gr.W("AdWebView unable to handle URL: " + paramString);
      }
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.gv
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */