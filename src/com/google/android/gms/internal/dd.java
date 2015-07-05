package com.google.android.gms.internal;

import android.os.RemoteException;
import com.google.android.gms.ads.mediation.MediationBannerAdapter;
import com.google.android.gms.ads.mediation.MediationBannerListener;
import com.google.android.gms.ads.mediation.MediationInterstitialAdapter;
import com.google.android.gms.ads.mediation.MediationInterstitialListener;

@ey
public final class dd
  implements MediationBannerListener, MediationInterstitialListener
{
  private final da qW;
  
  public dd(da paramda)
  {
    qW = paramda;
  }
  
  public void onAdClicked(MediationBannerAdapter paramMediationBannerAdapter)
  {
    jx.aU("onAdClicked must be called on the main UI thread.");
    gr.S("Adapter called onAdClicked.");
    try
    {
      qW.onAdClicked();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      gr.d("Could not call onAdClicked.", paramMediationBannerAdapter);
    }
  }
  
  public void onAdClicked(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    jx.aU("onAdClicked must be called on the main UI thread.");
    gr.S("Adapter called onAdClicked.");
    try
    {
      qW.onAdClicked();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      gr.d("Could not call onAdClicked.", paramMediationInterstitialAdapter);
    }
  }
  
  public void onAdClosed(MediationBannerAdapter paramMediationBannerAdapter)
  {
    jx.aU("onAdClosed must be called on the main UI thread.");
    gr.S("Adapter called onAdClosed.");
    try
    {
      qW.onAdClosed();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      gr.d("Could not call onAdClosed.", paramMediationBannerAdapter);
    }
  }
  
  public void onAdClosed(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    jx.aU("onAdClosed must be called on the main UI thread.");
    gr.S("Adapter called onAdClosed.");
    try
    {
      qW.onAdClosed();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      gr.d("Could not call onAdClosed.", paramMediationInterstitialAdapter);
    }
  }
  
  public void onAdFailedToLoad(MediationBannerAdapter paramMediationBannerAdapter, int paramInt)
  {
    jx.aU("onAdFailedToLoad must be called on the main UI thread.");
    gr.S("Adapter called onAdFailedToLoad with error. " + paramInt);
    try
    {
      qW.onAdFailedToLoad(paramInt);
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      gr.d("Could not call onAdFailedToLoad.", paramMediationBannerAdapter);
    }
  }
  
  public void onAdFailedToLoad(MediationInterstitialAdapter paramMediationInterstitialAdapter, int paramInt)
  {
    jx.aU("onAdFailedToLoad must be called on the main UI thread.");
    gr.S("Adapter called onAdFailedToLoad with error " + paramInt + ".");
    try
    {
      qW.onAdFailedToLoad(paramInt);
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      gr.d("Could not call onAdFailedToLoad.", paramMediationInterstitialAdapter);
    }
  }
  
  public void onAdLeftApplication(MediationBannerAdapter paramMediationBannerAdapter)
  {
    jx.aU("onAdLeftApplication must be called on the main UI thread.");
    gr.S("Adapter called onAdLeftApplication.");
    try
    {
      qW.onAdLeftApplication();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      gr.d("Could not call onAdLeftApplication.", paramMediationBannerAdapter);
    }
  }
  
  public void onAdLeftApplication(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    jx.aU("onAdLeftApplication must be called on the main UI thread.");
    gr.S("Adapter called onAdLeftApplication.");
    try
    {
      qW.onAdLeftApplication();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      gr.d("Could not call onAdLeftApplication.", paramMediationInterstitialAdapter);
    }
  }
  
  public void onAdLoaded(MediationBannerAdapter paramMediationBannerAdapter)
  {
    jx.aU("onAdLoaded must be called on the main UI thread.");
    gr.S("Adapter called onAdLoaded.");
    try
    {
      qW.onAdLoaded();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      gr.d("Could not call onAdLoaded.", paramMediationBannerAdapter);
    }
  }
  
  public void onAdLoaded(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    jx.aU("onAdLoaded must be called on the main UI thread.");
    gr.S("Adapter called onAdLoaded.");
    try
    {
      qW.onAdLoaded();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      gr.d("Could not call onAdLoaded.", paramMediationInterstitialAdapter);
    }
  }
  
  public void onAdOpened(MediationBannerAdapter paramMediationBannerAdapter)
  {
    jx.aU("onAdOpened must be called on the main UI thread.");
    gr.S("Adapter called onAdOpened.");
    try
    {
      qW.onAdOpened();
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      gr.d("Could not call onAdOpened.", paramMediationBannerAdapter);
    }
  }
  
  public void onAdOpened(MediationInterstitialAdapter paramMediationInterstitialAdapter)
  {
    jx.aU("onAdOpened must be called on the main UI thread.");
    gr.S("Adapter called onAdOpened.");
    try
    {
      qW.onAdOpened();
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      gr.d("Could not call onAdOpened.", paramMediationInterstitialAdapter);
    }
  }
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.dd
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */