package com.google.ads.mediation.customevent;

import android.view.View;
import com.google.ads.AdRequest.ErrorCode;
import com.google.ads.mediation.MediationBannerListener;
import com.google.android.gms.internal.gr;

final class CustomEventAdapter$a
  implements CustomEventBannerListener
{
  private final CustomEventAdapter q;
  private final MediationBannerListener r;
  
  public CustomEventAdapter$a(CustomEventAdapter paramCustomEventAdapter, MediationBannerListener paramMediationBannerListener)
  {
    q = paramCustomEventAdapter;
    r = paramMediationBannerListener;
  }
  
  public void onClick()
  {
    gr.S("Custom event adapter called onFailedToReceiveAd.");
    r.onClick(q);
  }
  
  public void onDismissScreen()
  {
    gr.S("Custom event adapter called onFailedToReceiveAd.");
    r.onDismissScreen(q);
  }
  
  public void onFailedToReceiveAd()
  {
    gr.S("Custom event adapter called onFailedToReceiveAd.");
    r.onFailedToReceiveAd(q, AdRequest.ErrorCode.NO_FILL);
  }
  
  public void onLeaveApplication()
  {
    gr.S("Custom event adapter called onFailedToReceiveAd.");
    r.onLeaveApplication(q);
  }
  
  public void onPresentScreen()
  {
    gr.S("Custom event adapter called onFailedToReceiveAd.");
    r.onPresentScreen(q);
  }
  
  public void onReceivedAd(View paramView)
  {
    gr.S("Custom event adapter called onReceivedAd.");
    CustomEventAdapter.a(q, paramView);
    r.onReceivedAd(q);
  }
}

/* Location:
 * Qualified Name:     com.google.ads.mediation.customevent.CustomEventAdapter.a
 * Java Class Version: 6 (50.0)
 * JD-Core Version:    0.7.1
 */