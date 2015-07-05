package com.google.android.gms.ads;

import android.content.Context;
import com.google.android.gms.ads.purchase.InAppPurchaseListener;
import com.google.android.gms.ads.purchase.PlayStorePurchaseListener;
import com.google.android.gms.internal.bi;

public final class InterstitialAd
{
  private final bi lm;
  
  public InterstitialAd(Context paramContext)
  {
    lm = new bi(paramContext);
  }
  
  public AdListener getAdListener()
  {
    return lm.getAdListener();
  }
  
  public String getAdUnitId()
  {
    return lm.getAdUnitId();
  }
  
  public InAppPurchaseListener getInAppPurchaseListener()
  {
    return lm.getInAppPurchaseListener();
  }
  
  public String getMediationAdapterClassName()
  {
    return lm.getMediationAdapterClassName();
  }
  
  public boolean isLoaded()
  {
    return lm.isLoaded();
  }
  
  public void loadAd(AdRequest paramAdRequest)
  {
    lm.a(paramAdRequest.Y());
  }
  
  public void setAdListener(AdListener paramAdListener)
  {
    lm.setAdListener(paramAdListener);
  }
  
  public void setAdUnitId(String paramString)
  {
    lm.setAdUnitId(paramString);
  }
  
  public void setInAppPurchaseListener(InAppPurchaseListener paramInAppPurchaseListener)
  {
    lm.setInAppPurchaseListener(paramInAppPurchaseListener);
  }
  
  public void setPlayStorePurchaseParams(PlayStorePurchaseListener paramPlayStorePurchaseListener, String paramString)
  {
    lm.setPlayStorePurchaseParams(paramPlayStorePurchaseListener, paramString);
  }
  
  public void show()
  {
    lm.show();
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.ads.InterstitialAd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */