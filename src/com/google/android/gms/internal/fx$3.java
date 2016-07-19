package com.google.android.gms.internal;

import android.content.Context;
import android.webkit.WebView;
import com.google.android.gms.ads.internal.client.AdSizeParcel;
import com.google.android.gms.ads.internal.request.AdRequestInfoParcel;
import com.google.android.gms.ads.internal.s;

final class fx$3
  implements Runnable
{
  fx$3(Context paramContext, AdRequestInfoParcel paramAdRequestInfoParcel, fz paramfz, ax paramax, au paramau, String paramString, ah paramah) {}
  
  public void run()
  {
    ib localib = s.f().a(a, new AdSizeParcel(), false, false, null, b.k);
    if (s.h().l()) {
      localib.clearCache(true);
    }
    localib.a().setWillNotDraw(true);
    c.a(localib);
    d.a(e, new String[] { "rwc" });
    Object localObject = d.a();
    localObject = fx.a(f, d, (au)localObject);
    ic localic = localib.l();
    localic.a("/invalidRequest", c.c);
    localic.a("/loadAdURL", c.d);
    localic.a("/log", by.i);
    localic.a((ic.a)localObject);
    gz.a("Loading the JS library.");
    localib.loadUrl(g.a());
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.fx.3
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */