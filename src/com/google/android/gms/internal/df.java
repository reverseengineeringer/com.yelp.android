package com.google.android.gms.internal;

import android.os.Handler;
import android.os.RemoteException;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.mediation.MediationBannerAdapter;
import com.google.ads.mediation.MediationBannerListener;
import com.google.ads.mediation.MediationInterstitialAdapter;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.ads.mediation.MediationServerParameters;
import com.google.ads.mediation.NetworkExtras;

@ey
public final class df<NETWORK_EXTRAS extends NetworkExtras, SERVER_PARAMETERS extends MediationServerParameters>
  implements MediationBannerListener, MediationInterstitialListener
{
  private final da qW;
  
  public df(da paramda)
  {
    qW = paramda;
  }
  
  public void onClick(MediationBannerAdapter<?, ?> paramMediationBannerAdapter)
  {
    gr.S("Adapter called onClick.");
    if (!gq.dB())
    {
      gr.W("onClick must be called on the main UI thread.");
      gq.wR.post(new df.1(this));
      return;
    }
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
  
  public void onDismissScreen(MediationBannerAdapter<?, ?> paramMediationBannerAdapter)
  {
    gr.S("Adapter called onDismissScreen.");
    if (!gq.dB())
    {
      gr.W("onDismissScreen must be called on the main UI thread.");
      gq.wR.post(new df.4(this));
      return;
    }
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
  
  public void onDismissScreen(MediationInterstitialAdapter<?, ?> paramMediationInterstitialAdapter)
  {
    gr.S("Adapter called onDismissScreen.");
    if (!gq.dB())
    {
      gr.W("onDismissScreen must be called on the main UI thread.");
      gq.wR.post(new df.9(this));
      return;
    }
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
  
  public void onFailedToReceiveAd(MediationBannerAdapter<?, ?> paramMediationBannerAdapter, AdRequest.ErrorCode paramErrorCode)
  {
    gr.S("Adapter called onFailedToReceiveAd with error. " + paramErrorCode);
    if (!gq.dB())
    {
      gr.W("onFailedToReceiveAd must be called on the main UI thread.");
      gq.wR.post(new df.5(this, paramErrorCode));
      return;
    }
    try
    {
      qW.onAdFailedToLoad(dg.a(paramErrorCode));
      return;
    }
    catch (RemoteException paramMediationBannerAdapter)
    {
      gr.d("Could not call onAdFailedToLoad.", paramMediationBannerAdapter);
    }
  }
  
  public void onFailedToReceiveAd(MediationInterstitialAdapter<?, ?> paramMediationInterstitialAdapter, AdRequest.ErrorCode paramErrorCode)
  {
    gr.S("Adapter called onFailedToReceiveAd with error " + paramErrorCode + ".");
    if (!gq.dB())
    {
      gr.W("onFailedToReceiveAd must be called on the main UI thread.");
      gq.wR.post(new df.10(this, paramErrorCode));
      return;
    }
    try
    {
      qW.onAdFailedToLoad(dg.a(paramErrorCode));
      return;
    }
    catch (RemoteException paramMediationInterstitialAdapter)
    {
      gr.d("Could not call onAdFailedToLoad.", paramMediationInterstitialAdapter);
    }
  }
  
  public void onLeaveApplication(MediationBannerAdapter<?, ?> paramMediationBannerAdapter)
  {
    gr.S("Adapter called onLeaveApplication.");
    if (!gq.dB())
    {
      gr.W("onLeaveApplication must be called on the main UI thread.");
      gq.wR.post(new df.6(this));
      return;
    }
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
  
  public void onLeaveApplication(MediationInterstitialAdapter<?, ?> paramMediationInterstitialAdapter)
  {
    gr.S("Adapter called onLeaveApplication.");
    if (!gq.dB())
    {
      gr.W("onLeaveApplication must be called on the main UI thread.");
      gq.wR.post(new df.11(this));
      return;
    }
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
  
  public void onPresentScreen(MediationBannerAdapter<?, ?> paramMediationBannerAdapter)
  {
    gr.S("Adapter called onPresentScreen.");
    if (!gq.dB())
    {
      gr.W("onPresentScreen must be called on the main UI thread.");
      gq.wR.post(new df.7(this));
      return;
    }
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
  
  public void onPresentScreen(MediationInterstitialAdapter<?, ?> paramMediationInterstitialAdapter)
  {
    gr.S("Adapter called onPresentScreen.");
    if (!gq.dB())
    {
      gr.W("onPresentScreen must be called on the main UI thread.");
      gq.wR.post(new df.2(this));
      return;
    }
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
  
  public void onReceivedAd(MediationBannerAdapter<?, ?> paramMediationBannerAdapter)
  {
    gr.S("Adapter called onReceivedAd.");
    if (!gq.dB())
    {
      gr.W("onReceivedAd must be called on the main UI thread.");
      gq.wR.post(new df.8(this));
      return;
    }
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
  
  public void onReceivedAd(MediationInterstitialAdapter<?, ?> paramMediationInterstitialAdapter)
  {
    gr.S("Adapter called onReceivedAd.");
    if (!gq.dB())
    {
      gr.W("onReceivedAd must be called on the main UI thread.");
      gq.wR.post(new df.3(this));
      return;
    }
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
}

/* Location:
 * Qualified Name:     com.google.android.gms.internal.df
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */