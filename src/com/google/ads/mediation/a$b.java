package com.google.ads.mediation;

import android.view.View;
import com.google.android.gms.ads.formats.NativeAdView;
import com.google.android.gms.ads.formats.d;
import com.yelp.android.bc.k;

class a$b
  extends k
{
  private final d d;
  
  public a$b(d paramd)
  {
    d = paramd;
    a(paramd.b().toString());
    a(paramd.c());
    b(paramd.d().toString());
    a(paramd.e());
    c(paramd.f().toString());
    d(paramd.g().toString());
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
 * Qualified Name:     com.google.ads.mediation.a.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */