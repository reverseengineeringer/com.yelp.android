package com.google.ads.mediation.customevent;

import android.app.Activity;
import android.view.View;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.ads.mediation.customevent.CustomEventExtras;
import com.google.android.gms.internal.gr;

public final class CustomEventAdapter
  implements MediationBannerAdapter<CustomEventExtras, CustomEventServerParameters>, MediationInterstitialAdapter<CustomEventExtras, CustomEventServerParameters>
{
  private View n;
  private CustomEventBanner o;
  private CustomEventInterstitial p;
  
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
  
  public void destroy()
  {
    if (o != null) {
      o.destroy();
    }
    if (p != null) {
      p.destroy();
    }
  }
  
  public Class<CustomEventExtras> getAdditionalParametersType()
  {
    return CustomEventExtras.class;
  }
  
  public View getBannerView()
  {
    return n;
  }
  
  public Class<CustomEventServerParameters> getServerParametersType()
  {
    return CustomEventServerParameters.class;
  }
  
  public void requestBannerAd(MediationBannerListener paramMediationBannerListener, Activity paramActivity, CustomEventServerParameters paramCustomEventServerParameters, AdSize paramAdSize, MediationAdRequest paramMediationAdRequest, CustomEventExtras paramCustomEventExtras)
  {
    o = ((CustomEventBanner)a(className));
    if (o == null)
    {
      paramMediationBannerListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
      return;
    }
    if (paramCustomEventExtras == null) {}
    for (paramCustomEventExtras = null;; paramCustomEventExtras = paramCustomEventExtras.getExtra(label))
    {
      o.requestBannerAd(new CustomEventAdapter.a(this, paramMediationBannerListener), paramActivity, label, parameter, paramAdSize, paramMediationAdRequest, paramCustomEventExtras);
      return;
    }
  }
  
  public void requestInterstitialAd(MediationInterstitialListener paramMediationInterstitialListener, Activity paramActivity, CustomEventServerParameters paramCustomEventServerParameters, MediationAdRequest paramMediationAdRequest, CustomEventExtras paramCustomEventExtras)
  {
    p = ((CustomEventInterstitial)a(className));
    if (p == null)
    {
      paramMediationInterstitialListener.onFailedToReceiveAd(this, AdRequest.ErrorCode.INTERNAL_ERROR);
      return;
    }
    if (paramCustomEventExtras == null) {}
    for (paramCustomEventExtras = null;; paramCustomEventExtras = paramCustomEventExtras.getExtra(label))
    {
      p.requestInterstitialAd(new CustomEventAdapter.b(this, this, paramMediationInterstitialListener), paramActivity, label, parameter, paramMediationAdRequest, paramCustomEventExtras);
      return;
    }
  }
  
  public void showInterstitial()
  {
    p.showInterstitial();
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.customevent.CustomEventAdapter
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */