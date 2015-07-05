package com.google.android.gms.ads.mediation.customevent;

import android.view.View;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.internal.gr;

final class CustomEventAdapter$a
  implements CustomEventBannerListener
{
  private final MediationBannerListener l;
  private final CustomEventAdapter xw;
  
  public CustomEventAdapter$a(CustomEventAdapter paramCustomEventAdapter, MediationBannerListener paramMediationBannerListener)
  {
    xw = paramCustomEventAdapter;
    l = paramMediationBannerListener;
  }
  
  public void onAdClicked()
  {
    gr.S("Custom event adapter called onAdClicked.");
    l.onAdClicked(xw);
  }
  
  public void onAdClosed()
  {
    gr.S("Custom event adapter called onAdClosed.");
    l.onAdClosed(xw);
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    gr.S("Custom event adapter called onAdFailedToLoad.");
    l.onAdFailedToLoad(xw, paramInt);
  }
  
  public void onAdLeftApplication()
  {
    gr.S("Custom event adapter called onAdLeftApplication.");
    l.onAdLeftApplication(xw);
  }
  
  public void onAdLoaded(View paramView)
  {
    gr.S("Custom event adapter called onAdLoaded.");
    CustomEventAdapter.a(xw, paramView);
    l.onAdLoaded(xw);
  }
  
  public void onAdOpened()
  {
    gr.S("Custom event adapter called onAdOpened.");
    l.onAdOpened(xw);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.mediation.customevent.CustomEventAdapter.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */