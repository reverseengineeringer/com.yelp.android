package com.google.android.gms.ads.mediation.customevent;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import com.google.android.gms.ads.AdSize;
import com.google.android.gms.ads.mediation.MediationAdRequest;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.gr;

public final class CustomEventAdapter
  implements MediationBannerAdapter, MediationInterstitialAdapter
{
  private View n;
  private CustomEventBanner xu;
  private CustomEventInterstitial xv;
  
  private static <T> T a(String paramString)
  {
    try
    {
      Object localObject = Class.forName(paramString).newInstance();
      return (T)localObject;
    }
    catch (Throwable localThrowable)
    {
      gr.W("Could not instantiate custom event adapter: " + paramString + ". " + localThrowable.getMessage());
    }
    return null;
  }
  
  private void a(View paramView)
  {
    n = paramView;
  }
  
  public View getBannerView()
  {
    return n;
  }
  
  public void onDestroy()
  {
    if (xu != null) {
      xu.onDestroy();
    }
    if (xv != null) {
      xv.onDestroy();
    }
  }
  
  public void onPause()
  {
    if (xu != null) {
      xu.onPause();
    }
    if (xv != null) {
      xv.onPause();
    }
  }
  
  public void onResume()
  {
    if (xu != null) {
      xu.onResume();
    }
    if (xv != null) {
      xv.onResume();
    }
  }
  
  public void requestBannerAd(Context paramContext, MediationBannerListener paramMediationBannerListener, Bundle paramBundle1, AdSize paramAdSize, MediationAdRequest paramMediationAdRequest, Bundle paramBundle2)
  {
    xu = ((CustomEventBanner)a(paramBundle1.getString("class_name")));
    if (xu == null)
    {
      paramMediationBannerListener.onAdFailedToLoad(this, 0);
      return;
    }
    if (paramBundle2 == null) {}
    for (paramBundle2 = null;; paramBundle2 = paramBundle2.getBundle(paramBundle1.getString("class_name")))
    {
      xu.requestBannerAd(paramContext, new CustomEventAdapter.a(this, paramMediationBannerListener), paramBundle1.getString("parameter"), paramAdSize, paramMediationAdRequest, paramBundle2);
      return;
    }
  }
  
  public void requestInterstitialAd(Context paramContext, MediationInterstitialListener paramMediationInterstitialListener, Bundle paramBundle1, MediationAdRequest paramMediationAdRequest, Bundle paramBundle2)
  {
    xv = ((CustomEventInterstitial)a(paramBundle1.getString("class_name")));
    if (xv == null)
    {
      paramMediationInterstitialListener.onAdFailedToLoad(this, 0);
      return;
    }
    if (paramBundle2 == null) {}
    for (paramBundle2 = null;; paramBundle2 = paramBundle2.getBundle(paramBundle1.getString("class_name")))
    {
      xv.requestInterstitialAd(paramContext, new CustomEventAdapter.b(this, this, paramMediationInterstitialListener), paramBundle1.getString("parameter"), paramMediationAdRequest, paramBundle2);
      return;
    }
  }
  
  public void showInterstitial()
  {
    xv.showInterstitial();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.mediation.customevent.CustomEventAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */