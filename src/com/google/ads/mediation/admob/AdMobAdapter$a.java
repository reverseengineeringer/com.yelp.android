package com.google.ads.mediation.admob;

import com.google.android.gms.ads.AdListener;
import com.google.android.gms.ads.mediation.MediationBannerListener;

final class AdMobAdapter$a
  extends AdListener
{
  private final AdMobAdapter k;
  private final MediationBannerListener l;
  
  public AdMobAdapter$a(AdMobAdapter paramAdMobAdapter, MediationBannerListener paramMediationBannerListener)
  {
    k = paramAdMobAdapter;
    l = paramMediationBannerListener;
  }
  
  public void onAdClosed()
  {
    l.onAdClosed(k);
  }
  
  public void onAdFailedToLoad(int paramInt)
  {
    l.onAdFailedToLoad(k, paramInt);
  }
  
  public void onAdLeftApplication()
  {
    l.onAdLeftApplication(k);
  }
  
  public void onAdLoaded()
  {
    l.onAdLoaded(k);
  }
  
  public void onAdOpened()
  {
    l.onAdClicked(k);
    l.onAdOpened(k);
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.admob.AdMobAdapter.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */