package com.google.ads.mediation.customevent;

import android.app.Activity;
import com.google.ads.AdSize;
import com.google.ads.mediation.MediationAdRequest;

@Deprecated
public abstract interface CustomEventBanner
  extends CustomEvent
{
  public abstract void requestBannerAd(CustomEventBannerListener paramCustomEventBannerListener, Activity paramActivity, String paramString1, String paramString2, AdSize paramAdSize, MediationAdRequest paramMediationAdRequest, Object paramObject);
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.customevent.CustomEventBanner
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */