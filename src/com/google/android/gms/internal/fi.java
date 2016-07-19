package com.google.android.gms.internal;

import android.content.Context;
import android.os.Handler;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.request.AdResponseParcel;
import com.google.android.gms.ads.internal.s;
import com.google.android.gms.common.internal.zzx;
import java.util.concurrent.atomic.AtomicBoolean;

@fv
public abstract class fi
  implements hf<Void>, ic.a
{
  protected final fl.a a;
  protected final Context b;
  protected final ib c;
  protected final gr.a d;
  protected AdResponseParcel e;
  protected final Object f = new Object();
  private Runnable g;
  private AtomicBoolean h = new AtomicBoolean(true);
  
  protected fi(Context paramContext, gr.a parama, ib paramib, fl.a parama1)
  {
    b = paramContext;
    d = parama;
    e = d.b;
    c = paramib;
    a = parama1;
  }
  
  private gr b(int paramInt)
  {
    AdRequestInfoParcel localAdRequestInfoParcel = d.a;
    return new gr(c, c, e.d, paramInt, e.f, e.j, e.l, e.k, i, e.h, null, null, null, null, null, e.i, d.d, e.g, d.f, e.n, e.o, d.h, null, e.D, e.E, e.F, e.G);
  }
  
  public final Void a()
  {
    zzx.zzcD("Webview render task needs to be called on UI thread.");
    g = new Runnable()
    {
      public void run()
      {
        if (!fi.a(fi.this).get()) {
          return;
        }
        gz.b("Timed out waiting for WebView to finish loading.");
        d();
      }
    };
    hd.a.postDelayed(g, ((Long)ao.ay.c()).longValue());
    b();
    return null;
  }
  
  protected void a(int paramInt)
  {
    if (paramInt != -2) {
      e = new AdResponseParcel(paramInt, e.k);
    }
    c.e();
    a.b(b(paramInt));
  }
  
  public void a(ib paramib, boolean paramBoolean)
  {
    gz.a("WebView finished loading.");
    if (!h.getAndSet(false)) {
      return;
    }
    if (paramBoolean) {}
    for (int i = c();; i = -1)
    {
      a(i);
      hd.a.removeCallbacks(g);
      return;
    }
  }
  
  protected abstract void b();
  
  protected int c()
  {
    return -2;
  }
  
  public void d()
  {
    if (!h.getAndSet(false)) {
      return;
    }
    c.stopLoading();
    s.g().a(c);
    a(-1);
    hd.a.removeCallbacks(g);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fi
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */