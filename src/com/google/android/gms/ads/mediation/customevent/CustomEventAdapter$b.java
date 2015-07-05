package com.google.android.gms.ads.mediation.customevent;

import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.gr;

class CustomEventAdapter$b
  implements CustomEventInterstitialListener
{
  private final MediationInterstitialListener m;
  private final CustomEventAdapter xw;
  
  public CustomEventAdapter$b(CustomEventAdapter paramCustomEventAdapter1, CustomEventAdapter paramCustomEventAdapter2, MediationInterstitialListener paramMediationInterstitialListener)
  {
    xw = paramCustomEventAdapter2;
    m = paramMediationInterstitialListener;
  }
  
  public void onAdClicked()
  {
    gr.S("Custom event adapter called onAdClicked.");
    m.onAdClicked(xw);
  }
  
  public void onAdClosed()
  {
    gr.S("Custom event adapter called onAdClosed.");
    m.onAdClosed(xw);
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    gr.S("Custom event adapter called onFailedToReceiveAd.");
    m.onAdFailedToLoad(xw, paramInt);
  }
  
  public void onAdLeftApplication()
  {
    gr.S("Custom event adapter called onAdLeftApplication.");
    m.onAdLeftApplication(xw);
  }
  
  public void onAdLoaded()
  {
    gr.S("Custom event adapter called onReceivedAd.");
    m.onAdLoaded(xx);
  }
  
  public void onAdOpened()
  {
    gr.S("Custom event adapter called onAdOpened.");
    m.onAdOpened(xw);
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.mediation.customevent.CustomEventAdapter.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */