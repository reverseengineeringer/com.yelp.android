package com.google.android.gms.ads.doubleclick;

import android.content.Context;
import com.google.android.gms.ads.AdListener;
import com.google.android.gms.internal.bi;

public final class PublisherInterstitialAd
{
  private final bi lm = new bi(paramContext, this);
  
  public PublisherInterstitialAd(Context paramContext) {}
  
  public AdListener getAdListener()
  {
    return lm.getAdListener();
  }
  
  public String getAdUnitId()
  {
    return lm.getAdUnitId();
  }
  
  public AppEventListener getAppEventListener()
  {
    return lm.getAppEventListener();
  }
  
  public String getMediationAdapterClassName()
  {
    return lm.getMediationAdapterClassName();
  }
  
  public boolean isLoaded()
  {
    return lm.isLoaded();
  }
  
  public void loadAd(PublisherAdRequest paramPublisherAdRequest)
  {
    lm.a(paramPublisherAdRequest.Y());
  }
  
  public void setAdListener(AdListener paramAdListener)
  {
    lm.setAdListener(paramAdListener);
  }
  
  public void setAdUnitId(String paramString)
  {
    lm.setAdUnitId(paramString);
  }
  
  public void setAppEventListener(AppEventListener paramAppEventListener)
  {
    lm.setAppEventListener(paramAppEventListener);
  }
  
  public void show()
  {
    lm.show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.doubleclick.PublisherInterstitialAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */