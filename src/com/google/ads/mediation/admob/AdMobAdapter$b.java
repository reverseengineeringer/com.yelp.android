package com.google.ads.mediation.admob;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

final class AdMobAdapter$b
  extends AdListener
{
  private final AdMobAdapter k;
  private final MediationInterstitialListener m;
  
  public AdMobAdapter$b(AdMobAdapter paramAdMobAdapter, MediationInterstitialListener paramMediationInterstitialListener)
  {
    k = paramAdMobAdapter;
    m = paramMediationInterstitialListener;
  }
  
  public void onAdClosed()
  {
    m.onAdClosed(k);
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    m.onAdFailedToLoad(k, paramInt);
  }
  
  public void onAdLeftApplication()
  {
    m.onAdLeftApplication(k);
  }
  
  public void onAdLoaded()
  {
    m.onAdLoaded(k);
  }
  
  public void onAdOpened()
  {
    m.onAdOpened(k);
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.admob.AdMobAdapter.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */