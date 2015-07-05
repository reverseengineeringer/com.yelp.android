package com.google.ads.mediation.customevent;

import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.mediation.MediationInterstitialListener;
import com.google.android.gms.internal.gr;

class CustomEventAdapter$b
  implements CustomEventInterstitialListener
{
  private final CustomEventAdapter q;
  private final MediationInterstitialListener s;
  
  public CustomEventAdapter$b(CustomEventAdapter paramCustomEventAdapter1, CustomEventAdapter paramCustomEventAdapter2, MediationInterstitialListener paramMediationInterstitialListener)
  {
    q = paramCustomEventAdapter2;
    s = paramMediationInterstitialListener;
  }
  
  public void onDismissScreen()
  {
    gr.S("Custom event adapter called onDismissScreen.");
    s.onDismissScreen(q);
  }
  
  public void onFailedToReceiveAd()
  {
    gr.S("Custom event adapter called onFailedToReceiveAd.");
    s.onFailedToReceiveAd(q, AdRequest.ErrorCode.NO_FILL);
  }
  
  public void onLeaveApplication()
  {
    gr.S("Custom event adapter called onLeaveApplication.");
    s.onLeaveApplication(q);
  }
  
  public void onPresentScreen()
  {
    gr.S("Custom event adapter called onPresentScreen.");
    s.onPresentScreen(q);
  }
  
  public void onReceivedAd()
  {
    gr.S("Custom event adapter called onReceivedAd.");
    s.onReceivedAd(t);
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.customevent.CustomEventAdapter.b
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */