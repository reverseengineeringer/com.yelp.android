package com.google.ads.mediation;

import android.view.View;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.c;
import com.yelp.android.bc.j;

class a$a
  extends j
{
  private final c d;
  
  public a$a(c paramc)
  {
    d = paramc;
    a(paramc.b().toString());
    a(paramc.c());
    b(paramc.d().toString());
    a(paramc.e());
    c(paramc.f().toString());
    a(paramc.g().doubleValue());
    d(paramc.h().toString());
    e(paramc.i().toString());
    a(true);
    b(true);
  }
  
  public void a(View paramView)
  {
    if ((paramView instanceof NativeAdView)) {
      ((NativeAdView)paramView).setNativeAd(d);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.a.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */